//reference https://en.cppreference.com/w/c/string/byte/atoi

#include <stdio.h>

extern long atoi(const char *str);

int main()
{
    const char* str = "-12";
    long num = atoi(str); //assuming the base is 10
    printf("%ld\n", num);
    return 0;
}
