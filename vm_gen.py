import os, sys
from bytecode_def import *

RUNTIME_ASM_TEMPLATE = """
global run
extern exec_cmd
extern invalid_inst

section .text
run:
    push rbp
    mov rbp, rsp
    
    mov rdi, rcx
    mov rsi, rdi

    mov rbx, 0
    
    ._loop:
    mov bx, word [rsi]
    add rsi, 2
<find insts>
<invalid inst handler>

<exec insts>
    ._return:
    leave
    ret
"""

INVALID_HANDLER = """
    mov cx, bx
    call invalid_inst
    mov rax, 1
    jmp ._return
"""

def get_runtime_asm() -> str:
    runtime_asm: str = RUNTIME_ASM_TEMPLATE
    find_insts_asm, exec_insts_asm = get_runtime_insts_asm()
    runtime_asm = runtime_asm.replace("<find insts>", find_insts_asm)
    runtime_asm = runtime_asm.replace("<exec insts>", exec_insts_asm)
    runtime_asm = runtime_asm.replace("<invalid inst handler>", INVALID_HANDLER)
    return runtime_asm

def get_runtime_insts_asm() -> tuple[str, str]:
    find_insts_asm, exec_insts_asm = "", ""
    for opcode, inst in enumerate(INSTS.keys(), 0):
        find_insts_asm += f"    cmp bx, {opcode}\n    je .i_{inst}\n"
        exec_insts_asm += f"    .i_{inst}:\n{INSTS[inst]}    jmp ._loop\n\n"
    return find_insts_asm, exec_insts_asm

def writefile(name: str, text: str):
    with open(name, "w") as f:
        f.write(text)

def main(argv: list[str]) -> None:
    if argv[1] == "gen":
        writefile("build/src/runtime.asm",get_runtime_asm())
        os.system("nasm -fwin64 build/src/runtime.asm -o build/obj/runtime.o")
        os.system("gcc -fPIC -shared build/obj/runtime.o build/src/runtime_builtins.c -o build/bin/runtime.dll")
    elif argv[1] == "test":
        os.add_dll_directory("D:\\Vedant\\1.Projects\\basic_runtime\\build\\bin")
        os.system("gcc tests/test.c build/bin/runtime.dll -o tests/test.exe")
        os.system(".\\tests\\test.exe")
    elif argv[1] == "gen_and_test":
        writefile("build/src/runtime.asm",get_runtime_asm())
        os.system("nasm -fwin64 build/src/runtime.asm -o build/obj/runtime.o")
        os.system("gcc -fPIC -shared build/obj/runtime.o build/src/runtime_builtins.c -o build/bin/runtime.dll")
        os.system("copy build\\bin\\runtime.dll")
        os.system("gcc tests/test.c runtime.dll -o tests/test.exe")
        os.system(".\\tests\\test.exe")

if __name__ == "__main__":
    main(sys.argv)