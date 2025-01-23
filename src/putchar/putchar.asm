section .text
    global putchar

putchar:

    mov rax, 1
    lea rsi, [rsp - 1]
    mov byte [rsi], dil
    mov rdi, 1
    mov rdx, 1
    syscall

    mov rax, rdi
    ret