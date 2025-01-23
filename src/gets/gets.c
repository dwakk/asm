//reference https://en.cppreference.com/w/c/io/gets

#include <stdio.h>

extern char* gets(char *buffer);

int main() {
    char buffer[255];
    char* pointer = gets(buffer); //assuming the buffer is non null
    printf("%s\n", buffer); //we can also use the pointer returned by the function
    return 0;
}
