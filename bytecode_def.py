def combine_dicts(*dicts: dict) -> dict:
    if len(dicts) == 0: return {}
    dict_ = dicts[0].copy()
    for a_dict in dicts[1:]:
        for key in a_dict.keys():
            dict_[key] = a_dict[key]
    return dict_

CONSUME_64BIT_VAL = "    add rsi, 8\n"

REGS_64bit = ("rax", "rcx", "rdx", "r8", "r9", "rsp", "rbp")

JMP = "    mov rsi, [rsi]\n    add rsi, rdi\n"
GET_FLAGS = "   pop rbx\n    cmp rbx, 0\n"

def make_64b_reg_inst(name_template: str, asm_code_template: str) -> dict[str, str]:
    OPERATIONS: dict[str, str] = {}
    for reg in REGS_64bit:
        OPERATIONS[name_template.replace("{reg}", reg)] = asm_code_template.replace("{reg}", reg)
    return OPERATIONS

def make_64b_reg_pair_inst(name_template: str, asm_code_template: str) -> dict[str, str]:
    OPERATIONS: dict[str, str] = {}
    for reg1 in REGS_64bit:
        for reg2 in REGS_64bit:
            OPERATIONS[name_template.replace("{reg1}", reg1).replace("{reg2}", reg2)] = asm_code_template.replace("{reg1}", reg1).replace("{reg2}", reg1)
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
        "jmp":         JMP + CONSUME_64BIT_VAL,
        "je":          GET_FLAGS + "    jne .end_je\n" + JMP + "    .end_je:\n" + CONSUME_64BIT_VAL,
        "jz":          GET_FLAGS + "    jnz .end_jz\n" + JMP + "    .end_jz:\n" + CONSUME_64BIT_VAL,
        "jne":         GET_FLAGS + "    je .end_jne\n" + JMP + "    .end_jne:\n" + CONSUME_64BIT_VAL,
        "jl":          GET_FLAGS + "    jge .end_jl\n" + JMP + "    .end_jl:\n" + CONSUME_64BIT_VAL,
        "jg":          GET_FLAGS + "    jle .end_jg\n" + JMP + "    .end_jg:\n" + CONSUME_64BIT_VAL,
        "jle":         GET_FLAGS + "    jg .end_jle\n" + JMP + "    .end_jle:\n" + CONSUME_64BIT_VAL,
        "jge":         GET_FLAGS + "    jl .end_jge\n" + JMP + "    .end_jge:\n" + CONSUME_64BIT_VAL,
        "call":        "    push rsi\n" + JMP + CONSUME_64BIT_VAL,
        "ret":         "    pop rsi\n",
        "leave":       "    leave\n",
        "enter":       "    push rbp\n    mov rbp, rsp\n",
        "extern_call": "    push rsi\n    push rdi\n    call [rsi]\n    pop rdi\n   pop rsi\n",
    }
)