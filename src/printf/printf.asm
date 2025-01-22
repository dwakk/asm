;we will not use format specifiers for now

section .text
    global printf

printf:
    xor rbx, rbx

.loop_string:
    cmp byte [rdi + rbx], 0
    je .done

    inc rbx
    jmp .loop_string
    
.done:
    mov rax, 1
    mov rsi, rdi
    mov rdi, 1
    mov rdx, rbx
    syscall

    ret