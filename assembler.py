from bytecode_def import INSTS
import re, os

LABEL_PATTERN = r"([A-Za-z_][A-Za-z0-9-]*\:)"

def basm_error(text: str, line_no: int, line: str):
    print(f"BASM error: {text} (on line {line_no}): {line}")
    os._exit(1)

def insert_int64(i: int, b: bytes, loc: int) -> bytes:
    b_l = list(b)
    b_i = i.to_bytes(8, "little")
    for j in range(8):
        b_l[loc+j] = b_i[j]
    output = b""
    for j in b_l:
        output += j.to_bytes(1)
    return output 


def assemble_line(line: str, opcodes: dict[str, int], line_no: int) -> tuple[bytes, str]:
    output = b""
    if line == "" or line.isspace(): return b"", ""
    line_list = line.split(maxsplit=1)
    output += opcodes[line_list[0]].to_bytes(2, "little")
    if len(line_list) == 2 and [line_list[1]+":"] == re.findall(LABEL_PATTERN, line_list[1]+":"):
        output += (0).to_bytes(8, "little", signed=True)
        return output, line_list[1]
    elif len(line_list) == 2:
        try: output += int(line_list[1]).to_bytes(8, "little", signed=True)
        except ValueError as e:
            basm_error(f"Invalid value", line_no, line)
    return output, ""

def assemble(basm_source_: str) -> bytes:
    opcodes: dict[str, int] = {}
    labels:       dict[str, int] = {}
    labels_used:  dict[str, list[int]] = {}
    output = b""
    basm_source = basm_source_.replace(";", "\n")
    basm_source = re.sub(LABEL_PATTERN, r"\n\1\n", basm_source)
    label_used = ""
    for label in re.findall(LABEL_PATTERN, basm_source):
        labels_used[label[:-1]] = []
    lines = basm_source.splitlines()
    output_of_line: bytes = b""
    for i, oper in enumerate(INSTS.keys(), 0):
        opcodes[oper] = i
    for line_no, line in enumerate(lines):
        if re.findall(LABEL_PATTERN, line) != []: labels[line[:-1]] = len(output)
        else: 
            output_of_line, label_used = assemble_line(line, opcodes, line_no)
        if label_used != "":
            try: labels_used[label_used].append(len(output)+2)
            except KeyError as e:
                basm_error(f"LabeL \"{e.args[0]}\" not defined", line_no, line)
        output += output_of_line
    for label in labels_used.keys():
        use_locs = labels_used[label]
        for use_loc in use_locs:
            output = insert_int64(labels[label], output, use_loc)
    return output