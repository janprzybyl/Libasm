global _ft_isalpha

extern _ft_islower
extern _ft_isupper

_ft_isalpha:
        call _ft_islower
        test rax, rax
        jnz is_alpha
        call _ft_isupper
        test rax, rax
        jnz is_alpha

is_not_alpha:
        xor rax, rax
        ret

is_alpha:   
        mov rax, 1
        ret