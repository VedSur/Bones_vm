#include <unistd.h>
#include <stdlib.h>
#include <stdio.h>
#include <sys/wait.h>
#include <stdint.h>

extern int exec_cmd(char **args)
{
    pid_t pid, wpid;
    int status; 
    pid = fork();
    if (pid == 0) {
        // Child process
        if (execvp(args[0], args) == -1) {
            perror("exec_cmd");
        }
        exit(EXIT_FAILURE);
    } else if (pid < 0) {
        // Error forking
        perror("exec_cmd");
    } else {
        // Parent process
        do {
            wpid = waitpid(pid, &status, WUNTRACED);
        } while (!WIFEXITED(status) && !WIFSIGNALED(status));
    }
    if(fork() != 0) exit(0);
    return 0;
}

extern void invalid_inst(int16_t opcode) {
    printf("Invalid opcode: 0x%x\n", opcode);
}