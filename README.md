Bones VM
===
A virtual machine that interprets bytecode (written in x86_64 intel nasm syntax assembly)
## Usage
### Generating VM
- Generation:
```bash
python main.py -b
# or
python main.py --build
```
This generates "build/bin/bvm.so" or "build/bin/bvm.so" or "build/bin/bvm.dylib" which contains the function:
```c
int64_t run_on_bvm(uintptr_t entry_point, char *bytecode);
```

### Using Bones assembler(BASM)

```bash
python main.py -s tests/test.basm tests/tests.bvm.bin
# or
python main.py --basm tests/test.basm tests/tests.bvm.bin
```
## Using Bones VM

```bash
python main.py tests/tests.bvm.bin
```