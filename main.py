import sys
from vm_build  import build_bvm
from vm        import run_vm
from assembler import assemble_file

def main(argv: list[str]):
    argv.pop(0)
    if "-b" in argv or "--build" in argv:
        build_bvm()
    elif "-s" in argv or "--basm" in argv:
        if "-s" in argv: argv.pop(argv.index("-s"))
        elif "--basm" in argv: argv.pop(argv.index("--basm"))
        assemble_file(argv[0], argv[1])
    else:
        run_vm(argv[0])

if __name__ == "__main__":
    main(sys.argv)