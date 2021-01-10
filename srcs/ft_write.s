; not done yet!
 
        global _ft_write

_ft_write:
        cmp     rsi, 0              ; checking if given parameter isn't NULL
        jz      failure             
        mov     r8, rdx             ; save rdx value, because it may be reset after syscall
        mov     rax, 0x02000004     ; syscall for write
        syscall
        cmp     rax, -1             ; check for return value from syscall
        jg      success             ; jump if greater

failure:
        mov     rax, -1
        ret

success:
        mov     rax, r8            ; return number of bytes which were written
        ret
