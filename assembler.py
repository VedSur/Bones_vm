import sys, re, os
from bytecode_def import OPERATIONS
from fs_utils import read_file_str, write_to_file_bytes

LABEL_PATTERN = r"([A-Za-z_][A-Za-z0-9-]*\:)"

def basm_error(text: str, line_no: int, line: str):
    print(f"BASM error: {text} (on line {line_no}): {line}")
    os._exit(1)

def get_sec(sec_name: str, basm_source: str):
    start = f"section .{sec_name}"
    end   = f"end .{sec_name}"
    return basm_source[basm_source.find(start)+len(start):basm_source.find(end)]

def rep_int64(i: int): return i.to_bytes(8, "little")

def insert_int64(i: int, b: bytes, loc: int) -> bytes:
    b_l = list(b)
    b_i = i.to_bytes(8, "little")
    for j in range(8):
        b_l[loc+j] = b_i[j]
    output = b""
    for j in b_l:
        output += j.to_bytes(1)
    return output 

def assemble_text_line(line: str, opcodes: dict[str, int], line_no: int) -> tuple[bytes, str]:
    output = b""
    if line == "" or line.isspace(): return b"", ""
    line_list = line.split(maxsplit=1)
    try: output += opcodes[line_list[0]].to_bytes(2, "little")
    except KeyError as e:
        basm_error(f"Invalid operation \"{e.args[0]}\"", line_no, line)
    if len(line_list) == 2 and [line_list[1]+":"] == re.findall(LABEL_PATTERN, line_list[1]+":"):
        output += (0).to_bytes(8, "little", signed=True)
        return output, line_list[1]
    elif len(line_list) == 2:
        try: output += int(line_list[1]).to_bytes(8, "little", signed=True)
        except ValueError as e:
            basm_error(f"Invalid value", line_no, line)
    return output, ""

def assemble_text(basm_source_: str, data_labels: dict[str, int]) -> bytes:
    opcodes: dict[str, int] = {}
    labels:       dict[str, int] = data_labels.copy()
    labels_used:  dict[str, list[int]] = {}
    output = b""
    basm_source = basm_source_.replace(";", "\n")
    basm_source = re.sub(LABEL_PATTERN, r"\n\1\n", basm_source)
    label_used = ""
    for label in re.findall(LABEL_PATTERN, basm_source):
        labels_used[label[:-1]] = []
    for label in labels:
        labels_used[label] = []
    lines = basm_source.splitlines()
    output_of_line: bytes = b""
    for i, oper in enumerate(OPERATIONS.keys(), 0):
        opcodes[oper] = i
    for line_no, line in enumerate(lines):
        if re.findall(LABEL_PATTERN, line) != []: labels[line[:-1]] = len(output)
        else: 
            output_of_line, label_used = assemble_text_line(line, opcodes, line_no)
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

def assemble_data_token(token: str, line_no: int, line: str) -> bytes:
    data = eval(compile(token, "section .mdata", "eval"))
    if   type(data) == int: return rep_int64(data)
    elif type(data) == str: return bytes(data, "utf-8")
    else:
        basm_error("Unrecognised type of data {token}", line_no, line)
        raise Exception

def assemble_data_line(line: str, line_no: int) -> bytes:
    output = b""
    if line == "" or line.isspace(): return b""
    in_str: bool = False
    in_chr: bool = False
    is_bsc: bool = False
    buffer: str  = ""
    for ch in line:
        if not in_chr and not in_str and ch.isspace(): continue
        elif not in_chr and not in_str and ch == ',':
            if buffer == "": continue
            output += assemble_data_token(buffer, line_no, line)
            buffer = ""
            continue
        elif not in_chr and not in_str and ch == '\"':
            in_str = True
        elif not in_chr and not in_str and ch == '\'':
            in_chr = True
        elif in_str and not is_bsc and ch == '\"':
            in_str = False
            buffer += ch
            output += assemble_data_token(buffer, line_no, line)
            buffer = ""
            continue
        elif in_chr and not is_bsc and ch == '\'':
            in_chr = False
            buffer += ch
            output += assemble_data_token(buffer, line_no, line)
            buffer = ""
            continue
        elif (in_chr or in_str) and ch == '\\':
            is_bsc = True
        elif is_bsc:
            is_bsc = False
        buffer += ch
    if buffer != "":
        output += assemble_data_token(buffer, line_no, line)
    return output

def assemble_data(basm_source_: str) -> tuple[bytes, dict[str, int]]:
    labels:       dict[str, int] = {}
    output = b""
    basm_source = basm_source_.replace(";", "\n")
    basm_source = re.sub(LABEL_PATTERN, r"\n\1\n", basm_source)
    lines = basm_source.splitlines()
    for line_no, line in enumerate(lines):
        if re.findall(LABEL_PATTERN, line) != []: labels[line[:-1]] = len(output)
        else: 
            output += assemble_data_line(line, line_no)
    return output, labels

def assemble(basm_source: str) -> bytes:
    output: bytes = b""
    basm_text_source = get_sec("text", basm_source)
    basm_data_source = get_sec("mdata", basm_source)
    data_output, data_labels = assemble_data(basm_data_source)
    text_output = assemble_text(basm_text_source, data_labels)
    output += len(text_output).to_bytes(4, "little", signed=False)
    output += text_output
    output += data_output
    return output

def assemble_from_file(source_path: str) -> bytes:
    source_code: str = read_file_str(source_path)
    return assemble(source_code)
    
def assemble_file(source_path: str, target_path: str) -> None:
    output: bytes = assemble_from_file(source_path)
    write_to_file_bytes(target_path, output)

def assembler_main(argv: list[str]) -> None:
    assemble_file(argv[1], argv[2])