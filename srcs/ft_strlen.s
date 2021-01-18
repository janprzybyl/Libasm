        global  _ft_strlen

_ft_strlen:
        xor     rax, rax        ; It's a common assembler idiom to set a register to 0.             

iterate:
        cmp     byte [rdi + rax], 0
        je      return
        inc     rax
        jmp     iterate

return:
        ret