//reference https://en.cppreference.com/w/c/string/byte/strchr

#include <stdio.h>

extern char *strchr(const char *str, int ch);

int main() {
    const char str[] = "Hello, world!";
    char ch1 = 'o';
    char ch2 = 'z';
    char ch3 = '\0';

    char *res1 = strchr(str, ch1);
    char *res2 = strchr(str, ch2);
    char *res3 = strchr(str, ch3);

    if (res1)
        printf("Character '%c' found at position: %ld\n", ch1, res1 - str);
    else
        printf("Character '%c' not found\n", ch1);

    if (res2)
        printf("Character '%c' found at position: %ld\n", ch2, res2 - str);
    else
        printf("Character '%c' not found\n", ch2);

    if (res3)
        printf("Null character found at position: %ld\n", res3 - str);
    else
        printf("Null character not found\n");

    return 0;
}
