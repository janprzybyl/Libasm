        global  _ft_strcmp

_ft_strcmp:
        mov     al, [rdi]
        mov     bl, [rsi]
        cmp     al, 0
        jz      subtract
        cmp     bl, 0
        jz      subtract
        cmp     al, bl
        jne     subtract
        inc     rdi
        inc     rsi
        jmp     _ft_strcmp

subtract:
        movsx   rbx, bl         ; movsx allows us to copy value from smaller register to the bigger one
        movsx   rax, al
        sub     rax, rbx
        ret