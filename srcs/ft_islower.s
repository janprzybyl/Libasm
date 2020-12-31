global _ft_islower

_ft_islower:
            cmp rdi, 97
            jl is_not_lower
            cmp rdi, 122
            jg is_not_lower

is_lower:
            mov rax, 1
            ret

is_not_lower:
            xor rax, rax
            ret