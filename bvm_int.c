#include <stdlib.h>
#include "build/src/bvm_builtins.c"

int64_t main(int argc, char **argv) {
    char *file_name = argv[1];
    FILE *file = fopen(file_name, "rb");
    fseek(file, 0, SEEK_END);

    size_t file_size = ftell(file);
    file = fopen(file_name, "rb");

    int32_t data_sec_index;
    fread(&data_sec_index, 4, 1, file);

    char *text_section = malloc(data_sec_index);
    fread(text_section, 1, data_sec_index, file);


    char *data_section = malloc(file_size-4-data_sec_index);
    fread(data_section, 1, file_size-4-data_sec_index, file);

    int64_t ec = run_on_bvm(0, text_section, data_section);

    free(data_section);
    free(text_section);
    fclose(file);
    return ec;
}