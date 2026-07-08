#include <unistd.h>
#include <stdlib.h>
#include <stdio.h>
#include <sys/wait.h>

int run(char[], char[]);
int exec_cmd(char **args);

int move(char *loc, const char *string, int length) {
    for(int i = 0; i < length; i++) loc[i] = string[i];
}

void print_chars_codes_hex(char *string, int length) {
    for(int i = 0; i < length; i++) 
        printf("%x, ", (unsigned char)string[i]);
    printf("\n");
}

void insert_pointer_in_string(void* pointer, char* string) {
    long int a = (long int)pointer;
    for(int i = 0; i < 8; i++) {
        string[i] = a & 0xff;
        a = a/0x100;
    }
}
int main() {
    int a = 10;
    int b = 200;
    int c = a*b;
    char* sections[2];
    sections[0] = malloc(14);
    move(sections[0],
        "\xFF\xF0" "\x00\x00\x00\x00\x00\x00\x00\x00"
        "\x01\x00"
        "\x00\x00", 14);
    sections[1] = "echo\0Hello\0";
    char *args[3];
    args[0] = sections[1];
    args[1] = sections[1] + 5;
    args[2] = NULL;
    insert_pointer_in_string(args, sections[0]+2);
    long int i = run(sections[1], sections[0]);
    printf("%d\n", i);
    free(sections[0]);
    return 0;
}