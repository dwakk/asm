//reference https://en.cppreference.com/w/c/string/byte/strcmp

#include<stdio.h>

extern int strcmp(const char *lhs, const char *rhs);

void demo(const char* lhs, const char* rhs)
{
    const int rc = strcmp(lhs, rhs);
    const char* rel = rc < 0 ? "precedes" : rc > 0 ? "follows" : "equals";
    printf("[%s] %s [%s]\n", lhs, rel, rhs);
}
 
int main(void)
{
    const char* string = "Hello World!";
    demo(string, "Hello!");
    demo(string, "Hello");
    demo(string, "Hello there");
    demo("Hello, everybody!" + 12, "Hello, somebody!" + 11);
}