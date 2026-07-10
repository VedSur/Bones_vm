def combine_dicts(*dicts: dict) -> dict:
    if len(dicts) == 0: return {}
    dict_ = dicts[0].copy()
    for a_dict in dicts[1:]:
        for key in a_dict.keys():
            dict_[key] = a_dict[key]
    return dict_

CONSUME_VAL = {
    256: "    add r14, 32\n",
    128: "    add r14, 16\n",
    64:  "    add r14, 8\n",
    32:  "    add r14, 4\n",
    16:  "    add r14, 2\n",
    8:   "    add r14, 1\n"
}

REGS = {
    256: ("ymm0", "ymm1", "ymm2", "ymm3", "ymm4", "ymm5", "ymm6", "ymm7", "ymm8", "ymm9", "ymm10", "ymm11", "ymm12", "ymm13", "ymm14", "ymm15"),
    128: ("xmm0", "xmm1", "xmm2", "xmm3", "xmm4", "xmm5", "xmm6", "xmm7", "xmm8", "xmm9", "xmm10", "xmm11", "xmm12", "xmm13", "xmm14", "xmm15"),
    64:  ("rax", "rcx", "rdx", "r8", "r9", "r10", "r11", "r12", "r13", "rsi", "rdi", "rsp", "rbp"),
    32:  ("eax", "ecx", "edx", "esi", "edi", "esp", "ebp"),
    16:  ("ax", "cx", "dx", "si", "di", "sp", "bp"),
    8:   ("al", "cl", "dl")
}

JMP = "    mov r14, [r14-8]\n    add r14, [r15+8]\n"
GET_FLAGS = "    pop rbx\n    cmp rbx, 0\n"

def make_xb_reg_inst(bit_sizes: list[int], name_template: str, asm_code_template: str) -> dict[str, str]:
    INSTATIONS: dict[str, str] = {}
    for bit_size in bit_sizes:
        for reg in REGS[bit_size]:
            INSTATIONS[name_template.replace("{reg}", reg)] = asm_code_template.replace("{reg}", reg) + CONSUME_VAL[bit_size]
    return INSTATIONS

def make_xb_reg_pair_inst(bit_sizes: list[int], name_template: str, asm_code_template: str) -> dict[str, str]:
    INSTATIONS: dict[str, str] = {}
    for bit_size in bit_sizes:
        for reg1 in REGS[bit_size]:
            for reg2 in REGS[bit_size]:
                INSTATIONS[name_template.replace("{reg1}", reg1).replace("{reg2}", reg2)] = asm_code_template.replace("{reg1}", reg1).replace("{reg2}", reg2)
    return INSTATIONS

def make_64b_reg_inst(name_template: str, asm_code_template: str) -> dict[str, str]:
    INSTATIONS: dict[str, str] = {}
    for reg in REGS[64]:
        INSTATIONS[name_template.replace("{reg}", reg)] = asm_code_template.replace("{reg}", reg) + CONSUME_VAL[64]
    return INSTATIONS

def make_64b_reg_pair_inst(name_template: str, asm_code_template: str) -> dict[str, str]:
    INSTATIONS: dict[str, str] = {}
    for reg1 in REGS[64]:
        for reg2 in REGS[64]:
            INSTATIONS[name_template.replace("{reg1}", reg1).replace("{reg2}", reg2)] = asm_code_template.replace("{reg1}", reg1).replace("{reg2}", reg2)
    return INSTATIONS

INSTATIONS = combine_dicts(
    {
        "exit":         "    jmp ._return\n",
        "nop":          "",
        "mov_mm_64b":  "    mov rbx, [r14+2]\n    mov [r14], rbx\n    add r14, 16\n",
        "mov_mm_32b":  "    mov ebx, [r14+2]\n    mov [r14], ebx\n    add r14, 8\n",
        "mov_mm_16b":  "    mov bx, [r14+2] \n    mov [r14], bx \n    add r14, 4\n",
        "mov_mm_16b":  "    mov bl, [r14+2] \n    mov [r14], bl \n    add r14, 2\n",
    },
    make_64b_reg_inst     ("push_{reg}",         "    push {reg}\n"),
    make_64b_reg_inst     ("pop_{reg}",          "    pop {reg}\n"),
    make_64b_reg_inst     ("dref_{reg}",         "    mov {reg}, [{reg}]\n"),
    make_64b_reg_inst     ("ddref_{reg}",        "    mov {reg}, [{reg}]\n    add {reg}, [r15+16]\n"),

    make_xb_reg_inst     ([64, 32, 16, 8], "mov_{reg}",          "    mov {reg}, [r14]\n"),
    make_xb_reg_inst     ([128],           "mov_{reg}",          "    movss {reg}, [r14]\n"),
    make_xb_reg_inst     ([64, 32, 16, 8], "add_{reg}",          "    add {reg}, [r14]\n"),
    make_xb_reg_inst     ([64, 32, 16, 8], "sub_{reg}",          "    sub {reg}, [r14]\n"),
    make_xb_reg_inst     ([64, 32, 16],    "imul_{reg}",         "    imul {reg}, [r14]\n"),
    make_xb_reg_inst     ([64, 32, 16, 8], "and_{reg}",          "    and {reg}, [r14]\n"),
    make_xb_reg_inst     ([128],           "and_{reg}",          "    pand {reg}, [r14]\n"),
    make_xb_reg_inst     ([64, 32, 16, 8], "or_{reg}",           "    or {reg}, [r14]\n"),
    make_xb_reg_inst     ([128],           "or_{reg}",           "    por {reg}, [r14]\n"),
    make_xb_reg_inst     ([64, 32, 16, 8], "xor_{reg}",          "    xor {reg}, [r14]\n"),
    make_xb_reg_inst     ([128],           "xor_{reg}",          "    pxor {reg}, [r14]\n"),

    make_xb_reg_pair_inst([64, 32, 16, 8], "mov_{reg1}_{reg2}",  "    mov {reg1}, {reg2}\n"),
    make_xb_reg_pair_inst([128],           "mov_{reg1}_{reg2}",  "    movss {reg1}, {reg2}\n"),
    make_xb_reg_pair_inst([64, 32, 16, 8], "add_{reg1}_{reg2}",  "    add {reg1}, {reg2}\n"),
    make_xb_reg_pair_inst([64, 32, 16, 8], "sub_{reg1}_{reg2}",  "    sub {reg1}, {reg2}\n"),
    make_xb_reg_pair_inst([64, 32, 16],    "imul_{reg1}_{reg2}", "    imul {reg1}, {reg2}\n"),
    make_xb_reg_pair_inst([64, 32, 16, 8], "and_{reg1}_{reg2}",  "    and {reg1}, {reg2}\n"),
    make_xb_reg_pair_inst([128],           "add_{reg1}_{reg2}",  "    pand {reg1}, {reg2}\n"),
    make_xb_reg_pair_inst([64, 32, 16, 8], "or_{reg1}_{reg2}",   "    or {reg1}, {reg2}\n"),
    make_xb_reg_pair_inst([128],           "xor_{reg1}_{reg2}",  "    por {reg1}, {reg2}\n"),
    make_xb_reg_pair_inst([64, 32, 16, 8], "xor_{reg1}_{reg2}",  "    xor {reg1}, {reg2}\n"),
    make_xb_reg_pair_inst([128],           "xor_{reg1}_{reg2}",  "    pxor {reg1}, {reg2}\n"),


    make_64b_reg_inst     ("ldd_{reg}",          "    mov {reg}, [r15+16]\n    add {reg}, [r14]\n"),
    make_64b_reg_inst     ("mov_m_{reg}",        "    mov rbx, [r14]\n    mov [rbx], {reg}\n"),
    make_64b_reg_inst     ("mov_d_{reg}",        "    mov rbx, [r14]\n    mov rbx, [r15+16]\n    mov [rbx], {reg}\n"),
    make_64b_reg_inst     ("cmp_{reg}",          "    mov rbx, {reg}\n    sub rbx, [r14]\n    push rbx\n"),


    make_64b_reg_pair_inst("mov_{reg1}_{reg2}",  "    mov {reg1}, {reg2}\n"),
    make_64b_reg_pair_inst("add_{reg1}_{reg2}",  "    add {reg1}, {reg2}\n"),
    make_64b_reg_pair_inst("sub_{reg1}_{reg2}",  "    sub {reg1}, {reg2}\n"),
    make_64b_reg_pair_inst("imul_{reg1}_{reg2}", "    imul {reg1}, {reg2}\n"),
    make_64b_reg_pair_inst("and_{reg1}_{reg2}",  "    and {reg1}, {reg2}\n"),
    make_64b_reg_pair_inst("or_{reg1}_{reg2}",   "    or {reg1}, {reg2}\n"),
    make_64b_reg_pair_inst("xor_{reg1}_{reg2}",  "    xor {reg1}, {reg2}\n"),

    make_64b_reg_pair_inst("cmp_{reg1}_{reg2}",  "    mov rbx, {reg1}\n    sub rbx, {reg2}\n    push rbx\n"),
    make_64b_reg_pair_inst("dref_{reg1}_{reg2}", "    mov {reg1}, [{reg2}]\n"),
    make_64b_reg_pair_inst("dref_{reg1}_{reg2}", "    mov {reg1}, [{reg2}]\n    add {reg1}, [r15+16]\n"),
    {
        "jmp":         CONSUME_VAL[64] + JMP,
        "je":          CONSUME_VAL[64] + GET_FLAGS + "    jne ._loop\n" + JMP,
        "jz":          CONSUME_VAL[64] + GET_FLAGS + "    jnz ._loop\n" + JMP,
        "jne":         CONSUME_VAL[64] + GET_FLAGS + "    je ._loop\n" + JMP,
        "jl":          CONSUME_VAL[64] + GET_FLAGS + "    jge ._loop\n" + JMP,
        "jg":          CONSUME_VAL[64] + GET_FLAGS + "    jle ._loop\n" + JMP,
        "jle":         CONSUME_VAL[64] + GET_FLAGS + "    jg ._loop\n" + JMP,
        "jge":         CONSUME_VAL[64] + GET_FLAGS + "    jl ._loop\n" + JMP,
        "call":        CONSUME_VAL[64] + "    push r14\n" + JMP,
        "extern_call": CONSUME_VAL[64] + "    push r14\n    push r15\n    mov rbx, [r15+24]\n    add rbx, [r14-8]\n    call [rbx]\n    pop r15\n    pop r14\n",
        "ret":         "    pop r14\n",
        "leave":       "    leave\n",
        "enter":       "    push rbp\n    mov rbp, rsp\n",
    }
)