section .text
    global gets

gets:
    mov rax, 0
    lea rsi, [rdi]
    mov rdi, 0
    mov rdx, 255
    syscall

    mov byte [rsi + rax - 1], 0
    mov rax, rsi
    ret