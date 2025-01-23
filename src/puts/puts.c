//reference https://en.cppreference.com/w/c/io/puts

extern int puts(const char *str);

int main() {
    //returns the number of characters printed to the console
    int num = puts("Hello, world");
    return 0;
}