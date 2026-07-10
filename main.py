import sys, os
from vm_build  import build_bvm
from vm        import run_vm
from assembler import assemble_file
from fs_utils  import BVM_DIR

def main(argv: list[str]):
    argv.pop(0)
    if "-b" in argv or "--build" in argv:
        build_bvm()
    elif "-s" in argv or "--basm" in argv:
        if "-s" in argv: argv.pop(argv.index("-s"))
        elif "--basm" in argv: argv.pop(argv.index("--basm"))
        assemble_file(argv[0], argv[1])
    elif "-p" or "--vm.py" in argv:
        if "-p" in argv: argv.pop(argv.index("-p"))
        elif "--vm.py" in argv: argv.pop(argv.index("--vm.py"))
        run_vm(argv[0])
    else:
        BVM_DIR = __file__.replace("main.py", "")
        if os.name == "nt":
            os.system(f"{BVM_DIR}/build/bin/vm_int.exe {argv[1]}")
        elif os.name == "posix":
            os.system(f"{BVM_DIR}/build/bin/vm_int.exe {argv[1]}")

if __name__ == "__main__":
    main(sys.argv)