        global  _ft_strdup

        extern  _malloc
        extern  _ft_strlen
        extern  _ft_strcpy

_ft_strdup:
        push    rdi             ; push rdi's value onto the stack as it will be destroyed after call
        call    _ft_strlen      ; check string lenght
        mov     rdi, rax        ; pass parameter to malloc, which is number of bytes to allocate
        inc     rdi             ; one byte additionaly for null character
        call    _malloc         
        pop     rdi             ; pop rdi's initial value from the stack

        mov     rsi, rdi        
        mov     rdi, rax
        call    _ft_strcpy

return:
        ret