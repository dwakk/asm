//reference https://en.cppreference.com/w/c/string/byte/atoi

#include <stdio.h>

extern long atoi(char *str);

int main() {
    long num = atoi("-12"); //assuming the base is 10
    printf("%ld\n", num);
    return 0;
}
