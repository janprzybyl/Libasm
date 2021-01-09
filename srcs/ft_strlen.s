        global  _ft_strlen

_ft_strlen:
        cmp     rdi, 0                  ; checking if given parameter isn't NULL
        jz      return
        xor     rax, rax                ; It's a common assembler idiom to set a register to 0.
                                        ; It's code-size is smaller than mov ax, 0
        jmp     iterate

increment:
        inc     rax                 

iterate:
        cmp     byte [rdi + rax], 0     ; You can access an individual byte from memory with the syntax BYTE[address]
        jne     increment

return:
        ret