#include <stdint.h>
#include <stdio.h>

uint64_t int16_to_uint64(int16_t i) { return (uint64_t)i & (uint64_t)0xffff; }

extern void handle_invalid_bvm_oper(int16_t opcode, int64_t loc) {
    printf("BVM error: Invalid opcode 0x%x at location 0x%x\n", int16_to_int64(opcode), loc);
}