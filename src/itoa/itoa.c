//this function is not part of the standard library
//reference https://www.ibm.com/docs/en/zos/3.1.0?topic=functions-itoa-convert-int-into-string

#include <stdio.h>

extern void itoa(long num, char *buffer);

int main()
{
    long num = -123;
    char buffer[20];
    itoa(num, buffer); //assuming the buffer is lage enough and the base is 10
    printf("%s\n", buffer);
    return 0;
}
