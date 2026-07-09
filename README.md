Bones VM
===
A virtual machine that interprets bytecode written in x86_64 intel syntax assembly
## Usage
### Generating VM
- Generation:
```bash
python vm_gen.py
```
This generates "build/bin/bvm.so" or "build/bin/bvm.so" or "build/bin/bvm.dylib" which contains the function:
```c
int64_t run_on_bvm(uintptr_t entry_point, char *bytecode);
```

### Using Bones assembler(BASM)

```bash
python assembler.py tests/test.basm tests/tests.bvm.bin
```