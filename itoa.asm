section .text
    global itoa

itoa:
    xor r8, r8
    xor r10, r10

    test rdi, rdi
    jz .zero
    js .negative

    mov rax, rdi
    jmp .itoa_loop

.zero:
    mov byte [rsi], 48
    ret

.negative:
    neg rdi
    mov rax, rdi
    inc r10
    jmp .itoa_loop

.itoa_loop:
    cmp rax, 0
    je .exit_itoa

    mov rbx, 10
    xor rdx, rdx
    div rbx

    add rdx, 48
    mov [rsi + r8], dl

    inc r8
    mov rax, rax
    jmp .itoa_loop

.exit_itoa:
    mov byte [rsi + r8], 0

reverse_string:
    mov rcx, r8
    shr rcx, 1
    xor rdi, rdi
    mov rdx, r8
    dec rdx

.reverse_loop:
    cmp rdi, rcx
    jge .done

    mov al, [rsi + rdi]
    mov bl, [rsi + rdx]
    mov [rsi + rdi], bl
    mov [rsi + rdx], al

    inc rdi
    dec rdx
    jmp .reverse_loop

.done:
    cmp r10, 1
    je .handle_negative
    ret

.handle_negative:
    mov rax, r8
    dec rax
    jz .exit_negative

.shift_loop:
    mov bl, byte [rsi + rax]
    mov byte [rsi + rax + 1], bl
    dec rax
    jns .shift_loop

.exit_negative:
    mov byte [rsi], 45
    ret