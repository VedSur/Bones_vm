#include <stdio.h>
#include <stdint.h>
#include <string.h>

typedef struct
{
    uintptr_t entry_point;
    char*     section_text;
    char*     section_data;
    void**    extern_funcs;
} record;

int main() 
{
    int i;
    record record1 = {1, (char*)2, (char*)3, (void**)4};

    printf("size of structure in bytes : %d\n", 
        sizeof(record1));
    
    printf("\nAddreSS of record       = %u", &record1);
    printf("\nAddress of entry_point  = %u", &record1.entry_point);
    printf("\nAddress of section_text = %u", &record1.section_text);
    printf("\nAddress of section_data = %u", &record1.section_data);
    printf("\nAddress of extern_funcs = %u", &record1.extern_funcs);

    return 0;
}