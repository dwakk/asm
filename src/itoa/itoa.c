//this function is not part of the standard library
//reference https://www.ibm.com/docs/en/zos/3.1.0?topic=functions-itoa-convert-int-into-string

#include <stdio.h>

extern void itoa(long num, char *buffer);

int main() {
    //the function assumes that the buffer is large enough and the base is 10
    char buffer[20];
    itoa(-123, buffer);
    printf("%s\n", buffer);
    return 0;
}
