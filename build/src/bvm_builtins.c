#include <stdio.h>
#include "bvm.h"
#include <stdlib.h>

uint64_t int16_to_uint64(int16_t i) { return (uint64_t)i & (uint64_t)0xffff; }

extern void handle_invalid_bvm_oper(int16_t opcode, int64_t loc) {
    printf("BVM error: Invalid opcode 0x%x at location 0x%x\n", int16_to_uint64(opcode), loc);
}

extern void f(char *s) {
    printf(s);
}

void *default_extern_funcs[] = {
    (void*)(&f),
};

int64_t run_on_bvm(uintptr_t entry_point, char section_text[], char section_data[]) {
    bvm_desc desc = {.entry_point=entry_point, .section_text=section_text, .section_data=section_data, .extern_funcs=default_extern_funcs};
    return run_on_bvm_with_desc(&desc);
}