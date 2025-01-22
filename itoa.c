#include <stdio.h>

extern void itoa(long num, char *buffer);

int main() {
    char buffer[20];
    itoa(-123, buffer);
    printf("%s\n", buffer);
    return 0;
}
