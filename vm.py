import shutil
import sys, os, ctypes
from fs_utils import read_file_bytes

def run_vm(bytecode_source_path: str) -> None:
    bvm_dll: ctypes.CDLL
    if os.name == "nt":
        os.add_dll_directory(__file__.replace("\\vm.py", "") + "")
        os.add_dll_directory(str(shutil.which("gcc")).replace("\\gcc.EXE", ""))
    elif os.name == "posix":
        os.add_dll_directory(__file__.replace("/vm.py", "") + "build/bin")
        os.add_dll_directory(str(shutil.which("gcc")).replace("/gcc.OUT", "").replace("/gcc.out", ""))
        bvm_dll = ctypes.CDLL("./build/bin/bvm.so")
    if sys.platform == "win32":
        bvm_dll = ctypes.CDLL(".\\build\\bin\\bvm.dll")
    elif sys.platform == "linux":
        bvm_dll = ctypes.CDLL("./build/bin/bvm.so")
    elif sys.platform == "darwin":
        bvm_dll = ctypes.CDLL("./build/bin/bvm.dylib")
    bytecode = read_file_bytes(bytecode_source_path)
    ec = bvm_dll["run_on_bvm"](ctypes.c_int64(0), ctypes.c_char_p(bytecode))
    os._exit(ec)

if __name__ == "__main__":
    run_vm(sys.argv[1])