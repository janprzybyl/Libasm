        global  _ft_strdup

        extern  _malloc
        extern  _ft_strlen

_ft_strdup:
        push    rdi             ; push rdi's value onto the stack as it will be destroyed after call
        call    _ft_strlen      ; check string lenght
        mov     rdi, rax        ; pass parameter to malloc, which is number of bytes to allocate
        inc     rdi             ; one byte additionaly for null character
        call    _malloc             
        mov     r9, rax         ; save pointer to the allocated memory
        pop     rdi             ; pop rdi's initial value from the stack
        jmp     copy

copy:
        mov     dl, [rdi]
        mov     [rax], dl
        cmp     dl, 0
        jz      return
        inc     rdi
        inc     rax
        jmp     copy

return:
        mov     rax, r9
        ret