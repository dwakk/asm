#include <stdio.h>

extern long atoi(char *str);

int main() {
    long num = atoi("-12");
    printf("%ld\n", num);
    return 0;
}
