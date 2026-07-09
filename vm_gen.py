import os
from bytecode_def import *

RUNTIME_ASM_TEMPLATE = """
global run_on_bvm
extern handle_invalid_bvm_oper

section .text
run_on_bvm:
    push rbp
    mov rbp, rsp
    
    mov rdi, rdx
    mov rsi, rdi
    add rsi, rcx

    mov rbx, 0
    
    ._loop:
    mov bx, [rsi]
    add rsi, 2
<find OPERATIONS>
<invalid inst handler>

<exec OPERATIONS>
    ._return:
    leave
    ret
"""

INVALID_HANDLER = """
    mov cx, bx
    mov rdx, rsi
    sub rdx, rsi
    call handle_invalid_bvm_oper
    mov rax, 1
    jmp ._return
"""

def get_runtime_asm() -> str:
    runtime_asm: str = RUNTIME_ASM_TEMPLATE
    find_insts_asm, exec_insts_asm = get_runtime_insts_asm()
    runtime_asm = runtime_asm.replace("<find OPERATIONS>", find_insts_asm)
    runtime_asm = runtime_asm.replace("<exec OPERATIONS>", exec_insts_asm)
    runtime_asm = runtime_asm.replace("<invalid inst handler>", INVALID_HANDLER)
    return runtime_asm

def get_runtime_insts_asm() -> tuple[str, str]:
    find_insts_asm, exec_insts_asm = "", ""
    for opcode, inst in enumerate(OPERATIONS.keys(), 0):
        find_insts_asm += f"    cmp bx, {hex(opcode)}\n    je .i_{inst}\n"
        exec_insts_asm += f"    .i_{inst}:\n{OPERATIONS[inst]}    jmp ._loop\n\n"
    return find_insts_asm, exec_insts_asm

def writefile(name: str, text: str):
    with open(name, "w") as f:
        f.write(text)

def generate_bvm() -> None:
    if   os.name == "nt":    writefile(__file__.replace("vm_gen.py", "") + "build\\src\\bvm.asm", get_runtime_asm())
    elif os.name == "posix": writefile(__file__.replace("vm_gen.py", "") + "build/src/bvm.asm",   get_runtime_asm())
    os.system("nasm -fwin64 build/src/bvm.asm -o build/obj/bvm.o")
    if os.name == "nt":
        os.system("gcc -fPIC -shared build/obj/bvm.o build/src/bvm_builtins.c -o build/bin/bvm.dll")
    elif sys.platform == "darwin":
        os.system("gcc -fPIC -shared build/obj/bvm.o build/src/bvm_builtins.c -o build/bin/bvm.dylib")
    elif sys.platform == "linux":
        os.system("gcc -fPIC -shared build/obj/bvm.o build/src/bvm_builtins.c -o build/bin/bvm.so")


if __name__ == "__main__":
    generate_bvm()
    print("BVM-Gen: Generated build/bin/bvm.dll (and build/src/bvm.asm)")