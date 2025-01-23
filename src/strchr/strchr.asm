section .text
    global strchr

strchr:
    xor rax, rax
    mov al, sil

.loop_string:
    mov bl, [rdi]
    cmp bl, al
    je .done

    cmp bl, 0
    je .not_found

    inc rdi
    jmp .loop_string

.not_found:
    xor rax, rax
    ret

.done:
    mov rax, rdi
    ret
