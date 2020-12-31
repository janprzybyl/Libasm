global _ft_isupper

_ft_isupper:
            cmp rdi, 65
            jl is_not_upper
            cmp rdi, 90
            jg is_not_upper

is_upper:
            mov rax, 1
            ret

is_not_upper:
            xor rax, rax
            ret















