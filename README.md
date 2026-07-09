Bones VM
===
A virtual machine that interprets bytecode written in x86_64 intel syntax assembly
## Usage
### Generating VM source
- Generation:
```bash
python vm_gen.py
```
This generates "build/bin/bvm.dll" which contains the function:
```c
int64_t run_on_bvm(uintptr_t entry_point, char *bytecode); // -> exit code
```

### Using Bones assembler(BASM)

(Though it's python api)

```python
from assembler import assemble

bytecode: bytes = assemble("""
call func
exit
nop
func:
    enter
    mov_rax_t 0
    leave
    ret
""")

print(bytecode)
```

