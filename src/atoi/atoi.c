//reference https://en.cppreference.com/w/c/string/byte/atoi

#include <stdio.h>

extern long atoi(char *buffer);

int main() {
    long num = atoi("-12");
    printf("%ld\n", num);
    return 0;
}
