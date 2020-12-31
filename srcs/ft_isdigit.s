global _ft_isdigit

_ft_isdigit:
            cmp rdi, '0'
            jl is_not_digit
            cmp rdi, '9'
            jg is_not_digit

is_digit:
            mov rax, 1
            ret
            
is_not_digit:
            xor rax, rax
            ret
