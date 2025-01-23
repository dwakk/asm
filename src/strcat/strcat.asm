section .text
    global strcat

strcat:

.dest:
    cmp byte [rdi], 0
    je .done_dest

    inc rdi
    jmp .dest

.done_dest:

.conc_loop:
    mov al, [rsi]
    mov [rdi], al
    inc rdi
    inc rsi

    cmp byte [rsi], 0
    je .done

    jmp .conc_loop

.done:
    mov rax, rdi
    ret