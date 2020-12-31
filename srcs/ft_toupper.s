global _ft_toupper

extern _ft_islower

_ft_toupper:
        call _ft_islower
        test rax, rax
        mov rax, rdi
        jz return
        sub rax, 32

return:
        ret