import os
from bytecode_def import *
from fs_utils     import BVM_DIR

RUNTIME_ASM_TEMPLATE = """
global run_on_bvm_with_desc
extern handle_invalid_bvm_inst

section .text
run_on_bvm_with_desc:

    push rbx
    push r12
    push r13
    push r14
    push r15
    push rsi
    push rdi

    push rbp
    mov rbp, rsp
    
    mov r15, rcx
    mov r14, [r15+8]
    add r14, [r15]
    
    ._loop:
    mov bx, [r14]
    add r14, 2
<find INSTATIONS>
<invalid inst handler>

<exec INSTATIONS>
    ._return:
    leave

    pop rdi
    pop rsi
    pop r12
    pop r13
    pop r15
    pop r14
    pop rbx

    ret
"""

INVALID_HANDLER = """
    mov cx, bx
    mov rdx, r14
    sub rdx, r14
    call handle_invalid_bvm_inst
    mov rax, 1
    jmp ._return
"""

def get_vm_asm() -> str:
    runtime_asm: str = RUNTIME_ASM_TEMPLATE
    find_insts_asm, exec_insts_asm = get_vm_inst_asm()
    runtime_asm = runtime_asm.replace("<find INSTATIONS>", find_insts_asm)
    runtime_asm = runtime_asm.replace("<exec INSTATIONS>", exec_insts_asm)
    runtime_asm = runtime_asm.replace("<invalid inst handler>", INVALID_HANDLER)
    return runtime_asm

def get_vm_inst_asm() -> tuple[str, str]:
    find_insts_asm, exec_insts_asm = "", ""
    for opcode, inst in enumerate(INSTATIONS.keys(), 0):
        find_insts_asm += f"    cmp bx, {hex(opcode)}\n    je .i_{inst}\n"
        exec_insts_asm += f"    .i_{inst}:\n{INSTATIONS[inst]}    jmp ._loop\n\n"
    return find_insts_asm, exec_insts_asm

def writefile(name: str, text: str):
    with open(name, "w") as f:
        f.write(text)

def build_bvm(document: bool = False) -> None:
    if   os.name == "nt":
        writefile(BVM_DIR + "build\\src\\bvm.asm", get_vm_asm())
    elif os.name == "posix":
        writefile(BVM_DIR + "build/src/bvm.asm",   get_vm_asm())
    if os.name == "nt":
        os.system(f"nasm -fwin64 {BVM_DIR}build/src/bvm.asm -o {BVM_DIR}build/obj/bvm.o")
        os.system(f"gcc -fPIC -shared {BVM_DIR}build/obj/bvm.o {BVM_DIR}build/src/bvm_builtins.c -o {BVM_DIR}build/bin/bvm.dll")
        os.system(f"gcc {BVM_DIR}bvm_int.c {BVM_DIR}build/obj/bvm.o -o {BVM_DIR}build/bin/vm_int.exe")
    elif sys.platform == "darwin":
        os.system(f"nasm -felf64 {BVM_DIR}build/src/bvm.asm -o {BVM_DIR}build/obj/bvm.o")
        os.system(f"gcc -fPIC -shared {BVM_DIR}build/obj/bvm.o build/src/bvm_builtins.c -o {BVM_DIR}build/bin/bvm.dylib")
        os.system(f"gcc {BVM_DIR}bvm_int.c {BVM_DIR}build/obj/bvm.o -o {BVM_DIR}build/bin/vm_int.out")
    elif sys.platform == "linux":
        os.system(f"nasm -fmacho64 {BVM_DIR}build/src/bvm.asm -o {BVM_DIR}yyybuild/obj/bvm.o")
        os.system(f"gcc {BVM_DIR}bvm_int.c {BVM_DIR}build/obj/bvm.o -o {BVM_DIR}build/bin/vm_int.out")
        os.system(f"gcc -fPIC -shared {BVM_DIR}build/obj/bvm.o {BVM_DIR}build/src/bvm_builtins.c -o {BVM_DIR}build/bin/bvm.so")
    if document:
        print("BVM-Gen: Generated ", end="")
        if os.name == "nt":
            print("build/bin/bvm.dll", end="")
        elif sys.platform == "darwin":
            print("build/bin/bvm.dylib", end="")
        elif sys.platform == "linux":
            print("build/bin/bvm.so", end="")
        print(" (and build/src/bvm.asm)")    