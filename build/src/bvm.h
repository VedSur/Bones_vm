#include <stdint.h>

typedef struct
{
    uintptr_t entry_point;
    char*     section_text;
    char*     section_data;
    void**    extern_funcs;
}  bvm_desc;

int64_t run_on_bvm_with_desc(bvm_desc *desc);