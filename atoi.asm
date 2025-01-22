section .text
global atoi

atoi:
    xor rax, rax
    xor rdx, rdx
    xor r8, r8

.loop_string:
    mov al, [rdi]
    test al, al
    jz .done

    cmp al, 45
    je .handle_negative

    sub al, 48
    imul rdx, rdx, 10
    add rdx, rax

    inc rdi
    jmp .loop_string

.handle_negative:
    inc r8
    inc rdi
    jmp .loop_string

.done:
    mov rax, rdx
    test r8, r8
    jz .return

    neg rax

.return:
    ret