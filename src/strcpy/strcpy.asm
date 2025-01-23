section .text
    global strcpy

strcpy:
    xor rax, rax

.loop_string:
    mov al, [rsi]
    mov [rdi], al
    inc rsi
    inc rdi

    cmp byte [rsi], 0
    je .done

    jmp .loop_string

.done:
    mov byte [rdi], 0
    mov rax, rdi
    ret