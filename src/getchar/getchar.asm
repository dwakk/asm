section .text
    global getchar

getchar:

    mov rax, 0
    mov rdi, 0
    lea rsi, [rsp - 1]
    mov rdx, 1
    syscall

    movzx rax, byte [rsp - 1]
    ret