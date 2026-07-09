def combine_dicts(*dicts: dict) -> dict:
    if len(dicts) == 0: return {}
    dict_ = dicts[0].copy()
    for a_dict in dicts[1:]:
        for key in a_dict.keys():
            dict_[key] = a_dict[key]
    return dict_

CONSUME_64BIT_VAL = "    add rsi, 8\n"

REGS_64bit = ("rax", "rcx", "rdx", "r8", "r9", "rsp", "rbp")

JMP = "    mov rsi, [rsi-8]\n    add rsi, rdi\n"
GET_FLAGS = "    pop rbx\n    cmp rbx, 0\n"

def make_64b_reg_inst(name_template: str, asm_code_template: str) -> dict[str, str]:
    OPERATIONS: dict[str, str] = {}
    for reg in REGS_64bit:
        OPERATIONS[name_template.replace("{reg}", reg)] = asm_code_template.replace("{reg}", reg)
    return OPERATIONS

def make_64b_reg_pair_inst(name_template: str, asm_code_template: str) -> dict[str, str]:
    OPERATIONS: dict[str, str] = {}
    for reg1 in REGS_64bit:
        for reg2 in REGS_64bit:
            OPERATIONS[name_template.replace("{reg1}", reg1).replace("{reg2}", reg2)] = asm_code_template.replace("{reg1}", reg1).replace("{reg2}", reg2)
    return OPERATIONS

OPERATIONS = combine_dicts(
    {
        "exit":     "    jmp ._return\n",
        "nop":      ""
    },
    make_64b_reg_inst     ("push_{reg}",         "    push {reg}\n"),
    make_64b_reg_inst     ("pop_{reg}",          "    pop {reg}\n"),
    make_64b_reg_inst     ("dref_{reg}",         "    mov {reg}, [{reg}]\n"),
    make_64b_reg_inst     ("mov_{reg}_t",        "    mov {reg}, [rsi]\n" + CONSUME_64BIT_VAL),
    make_64b_reg_inst     ("add_{reg}_t",        "    add {reg}, [rsi]\n" + CONSUME_64BIT_VAL),
    make_64b_reg_inst     ("sub_{reg}_t",        "    sub {reg}, [rsi]\n" + CONSUME_64BIT_VAL),
    make_64b_reg_inst     ("imul_{reg}_t",       "    add {reg}, [rsi]\n" + CONSUME_64BIT_VAL),
    make_64b_reg_inst     ("cmp_{reg}_t",        "    mov rbx, {reg}\n    sub rbx, [rsi]\n    push rbx\n" + CONSUME_64BIT_VAL),
    make_64b_reg_pair_inst("mov_{reg1}_{reg2}",  "    mov {reg1}, {reg2}\n"),
    make_64b_reg_pair_inst("add_{reg1}_{reg2}",  "    add {reg1}, {reg2}\n"),
    make_64b_reg_pair_inst("sub_{reg1}_{reg2}",  "    sub {reg1}, {reg2}\n"),
    make_64b_reg_pair_inst("imul_{reg1}_{reg2}", "    sub {reg1}, {reg2}\n"),
    make_64b_reg_pair_inst("cmp_{reg1}_{reg2}",  "    mov rbx, {reg1}\n    sub rbx, {reg2}\n    push rbx\n"),
    make_64b_reg_pair_inst("dref_{reg1}_{reg2}", "    mov {reg1}, [{reg2}]\n"),
    {
        "jmp":         CONSUME_64BIT_VAL + JMP,
        "je":          CONSUME_64BIT_VAL + GET_FLAGS + "    jne ._loop\n" + JMP,
        "jz":          CONSUME_64BIT_VAL + GET_FLAGS + "    jnz ._loop\n" + JMP,
        "jne":         CONSUME_64BIT_VAL + GET_FLAGS + "    je ._loop\n" + JMP,
        "jl":          CONSUME_64BIT_VAL + GET_FLAGS + "    jge ._loop\n" + JMP,
        "jg":          CONSUME_64BIT_VAL + GET_FLAGS + "    jle ._loop\n" + JMP,
        "jle":         CONSUME_64BIT_VAL + GET_FLAGS + "    jg ._loop\n" + JMP,
        "jge":         CONSUME_64BIT_VAL + GET_FLAGS + "    jl ._loop\n" + JMP,
        "call":        CONSUME_64BIT_VAL + "    push rsi\n" + JMP,
        "extern_call": CONSUME_64BIT_VAL + "    push rsi\n    push rdi\n    call [rsi-8]\n    pop rdi\n    pop rsi\n",
        "ret":         "    pop rsi\n",
        "leave":       "    leave\n",
        "enter":       "    push rbp\n    mov rbp, rsp\n",
    }
)