//reference https://en.cppreference.com/w/c/string/byte/strlen

#include <stdio.h>

extern size_t strlen (const char *str);

int main()
{
    const char str[] = "This string is 28 chars long";
    int size = strlen(str);
    printf("%d\n", size);
    return 0;
}