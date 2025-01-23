section .text
    global strlen

strlen:
    xor rax, rax

.loop_string:
    cmp byte [rdi + rax], 0
    je .done

    inc rax
    jmp .loop_string

.done:
    ret