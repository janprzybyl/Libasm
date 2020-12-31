global _ft_isalpha

_ft_isalpha:
            cmp rdi, 65
            jl is_not_alpha
            cmp rdi, 90
            jg is_upper
            
is_upper:
            cmp rdi, 97
            jl is_not_alpha
            cmp rdi, 122
            jg is_not_alpha

is_not_alpha:
            mov rax, 1
            ret

is_alpha:
            xor rax, rax
            ret
