section .text
    global strcmp

strcmp:
    xor rax, rax
    xor rcx, rcx

compare_loop:
    mov al, [rdi]
    mov cl, [rsi]
    sub al, cl
    jnz return_result
    test cl, cl
    jz equal_strings
    inc rdi
    inc rsi
    jmp compare_loop

return_result:
    movsx rax, al
    ret

equal_strings:
    xor rax, rax
    ret