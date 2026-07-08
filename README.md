Bones VM
===
A very low level virtual machine that interprets bytecode

## Usage
### Generating VM source
- Generation:
```bash
python vm_gen.py gen
```

- Test using tests/test.c:
```bash 
python vm_gen.py test
```

- Both
```bash
python vm_gen.py gen_and_test
```
This generates "build/bin/runtime.dll" which contains the function:
```c
int64_t run(char bytecode[]); // -> exit code
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

