//reference https://en.cppreference.com/w/c/io/getchar

#include <stdio.h>

extern int getchar(void);

int main()
{
    int ch = getchar();
    printf("%c\n", ch);
    return 0;
}