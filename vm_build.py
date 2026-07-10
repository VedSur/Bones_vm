import os
from bytecode_def import *
from fs_utils     import BVM_DIR

RUNTIME_ASM_TEMPLATE = """
global run_on_bvm_with_desc
extern handle_invalid_bvm_oper

section .text
run_on_bvm_with_desc:

    push rbx
    push rsi
    push rdi

    push rbp
    mov rbp, rsp
    
    mov rdi, rcx
    mov rsi, [rdi+8]
    add rsi, [rdi]
    
    ._loop:
    mov bx, [rsi]
    add rsi, 2
<find OPERATIONS>
<invalid oper handler>

<exec OPERATIONS>
    ._return:
    leave
    pop rdi
    pop rsi
    pop rbx
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

def get_vm_asm() -> str:
    runtime_asm: str = RUNTIME_ASM_TEMPLATE
    find_insts_asm, exec_insts_asm = get_vm_oper_asm()
    runtime_asm = runtime_asm.replace("<find OPERATIONS>", find_insts_asm)
    runtime_asm = runtime_asm.replace("<exec OPERATIONS>", exec_insts_asm)
    runtime_asm = runtime_asm.replace("<invalid oper handler>", INVALID_HANDLER)
    return runtime_asm

def get_vm_oper_asm() -> tuple[str, str]:
    find_insts_asm, exec_insts_asm = "", ""
    for opcode, oper in enumerate(OPERATIONS.keys(), 0):
        find_insts_asm += f"    cmp bx, {hex(opcode)}\n    je .i_{oper}\n"
        exec_insts_asm += f"    .i_{oper}:\n{OPERATIONS[oper]}    jmp ._loop\n\n"
    return find_insts_asm, exec_insts_asm

def writefile(name: str, text: str):
    with open(name, "w") as f:
        f.write(text)

def build_bvm(document: bool = False) -> None:
    if   os.name == "nt":
        writefile(BVM_DIR + "build\\src\\bvm.asm", get_vm_asm())
        os.system(f"gcc {BVM_DIR}bvm_int.c {BVM_DIR}build/obj/bvm.o -o {BVM_DIR}build/bin/vm_int.exe")
    elif os.name == "posix":
        writefile(BVM_DIR + "build/src/bvm.asm",   get_vm_asm())
        os.system(f"gcc {BVM_DIR}bvm_int.c {BVM_DIR}build/obj/bvm.o -o {BVM_DIR}build/bin/vm_int.out")
    if os.name == "nt":
        os.system("nasm -fwin64 build/src/bvm.asm -o build/obj/bvm.o")
        os.system("gcc -fPIC -shared build/obj/bvm.o build/src/bvm_builtins.c -o build/bin/bvm.dll")
    elif sys.platform == "darwin":
        os.system("nasm -felf64 build/src/bvm.asm -o build/obj/bvm.o")
        os.system("gcc -fPIC -shared build/obj/bvm.o build/src/bvm_builtins.c -o build/bin/bvm.dylib")
    elif sys.platform == "linux":
        os.system("nasm -fmacho64 build/src/bvm.asm -o build/obj/bvm.o")
        os.system("gcc -fPIC -shared build/obj/bvm.o build/src/bvm_builtins.c -o build/bin/bvm.so")
    if document:
        print("BVM-Gen: Generated ", end="")
        if os.name == "nt":
            print("build/bin/bvm.dll", end="")
        elif sys.platform == "darwin":
            print("build/bin/bvm.dylib", end="")
        elif sys.platform == "linux":
            print("build/bin/bvm.so", end="")
        print(" (and build/src/bvm.asm)")    