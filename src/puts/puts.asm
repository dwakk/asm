section .text
    global puts

puts:
    xor rbx, rbx
    mov rcx, 10

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

    mov rax, 1
    mov rdi, 1
    lea rsi, [rel newline]
    mov rdx, 1
    syscall

    mov rax, rbx

    ret

section .text
newline db 10