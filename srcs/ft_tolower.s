global _ft_tolower

extern _ft_isupper

_ft_tolower:
        call _ft_isupper
        test rax, rax
        mov rax, rdi
        jz return           ; jump if zero
        add rax, 32

return:
        ret