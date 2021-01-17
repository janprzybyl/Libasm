        global  _ft_strdup

        extern  _malloc
        extern  _ft_strlen

_ft_strdup:
        mov     r8, rdi         ; save rdi parameter as it might be erased after call
        call    _ft_strlen      ; check string lenght
        mov     rdi, rax        ; pass parameter to malloc, which is number of bytes to allocate
        inc     rdi             ; one byte additionaly for null character
        call    _malloc
        mov     r9, rax
        mov     dl, byte [r8]
        mov     byte [rax], dl
        cmp     dl, 0
        jz      return
        inc     r8
        inc     rax

return:
        mov     rax, r9
        ret