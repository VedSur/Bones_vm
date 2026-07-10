BVM_DIR =  __file__.replace("fs_utils.py", "")

def read_file_bytes(path: str) -> bytes:
    output: bytes = b""
    with open(path, "rb") as f:
        output = f.read()
    return output

def read_file_str(path: str) -> str:
    output: str = ""
    with open(path, "r") as f:
        output = f.read()
    return output

def write_to_file_bytes(path: str, content: bytes):
    with open(path, "wb") as f:
        f.write(content)

def write_to_file_str(path: str, content: str):
    with open(path, "w") as f:
        f.write(content)