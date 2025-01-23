//reference https://en.cppreference.com/w/c/string/byte/strcpy

#include <stdio.h>

extern char *strcpy(char *dest, const char *src);

int main()
{
    const char *src = "String to be copied";
    char buffer[100];
    strcpy(buffer, src);
    printf("%s\n", buffer);
    return 0;
}