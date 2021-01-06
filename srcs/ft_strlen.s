        global  _ft_strlen

_ft_strlen:
        xor     rax, rax
        jmp     iterate

increment:
        inc     rax

iterate:
        cmp     byte [rdi + rax], 0 ; You can access an individual byte from memory with the syntax BYTE[address]
        jne     increment

return:
        ret