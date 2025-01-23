//reference https://en.cppreference.com/w/c/string/byte/gets

#include <stdio.h>

extern char *strcat(char *dest, const char *str);

int main()
{
    char dest[100] = "Hello, ";
    const char str[] = "world";
    strcat(dest, str);
    printf("%s\n", dest);
    return 0;
}