//reference https://en.cppreference.com/w/c/io/putchar

extern int putchar(int ch);

int main()
{
    int ch = 'C';
    int ret = putchar(ch);
    return 0;
}