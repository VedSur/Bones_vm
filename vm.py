import shutil
import sys, os, ctypes
from fs_utils import read_file_bytes, BVM_DIR

def run_vm(bytecode_source_path: str) -> None:
    bvm_dll: ctypes.CDLL
    BVM_DIR: str
    os.add_dll_directory(BVM_DIR + "build/bin")
    os.add_dll_directory(str(shutil.which("gcc")).replace("\\gcc.EXE", "").replace("/gcc.OUT", "").replace("\\gcc.exe", "").replace("/gcc.out", ""))
    if sys.platform == "win32":
        bvm_dll = ctypes.CDLL(BVM_DIR + "build\\bin\\bvm.dll")
    elif sys.platform == "linux":
        bvm_dll = ctypes.CDLL(BVM_DIR + "build/bin/bvm.so")
    elif sys.platform == "darwin":
        bvm_dll = ctypes.CDLL(BVM_DIR + "build/bin/bvm.dylib")
    bytecode = read_file_bytes(bytecode_source_path)
    sec_data_ptr = int.from_bytes(bytecode[:4], "little")
    bytecode = bytecode[4:]
    sec_text = ctypes.c_char_p(bytecode[:sec_data_ptr])
    sec_data = ctypes.c_char_p(bytecode[sec_data_ptr:])
    ec = bvm_dll["run_on_bvm"](ctypes.c_int64(0), sec_text, sec_data)
    print(ec, sec_text, sec_data)
    os._exit(ec)