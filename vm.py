import shutil
import sys, os, ctypes
from fs_utils import read_file_bytes

def run_vm(bytecode_source_path: str) -> None:
    bvm_dll: ctypes.CDLL
    bvm_dir: str
    if os.name == "nt":
        bvm_dir = __file__.replace("vm.py", "")
    elif os.name == "posix":
        bvm_dir = __file__.replace("vm.py", "")
    os.add_dll_directory(bvm_dir + "build/bin")
    os.add_dll_directory(str(shutil.which("gcc")).replace("\\gcc.EXE", "").replace("/gcc.OUT", ""))
    if sys.platform == "win32":
        bvm_dll = ctypes.CDLL(bvm_dir + "build\\bin\\bvm.dll")
    elif sys.platform == "linux":
        bvm_dll = ctypes.CDLL(bvm_dir + "/build/bin/bvm.so")
    elif sys.platform == "darwin":
        bvm_dll = ctypes.CDLL(bvm_dir + "./build/bin/bvm.dylib")
    bytecode = read_file_bytes(bytecode_source_path)
    ec = bvm_dll["run_on_bvm"](ctypes.c_int64(0), ctypes.c_char_p(bytecode))
    os._exit(ec)