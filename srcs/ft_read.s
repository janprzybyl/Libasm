        global  _ft_read

        extern  ___error

_ft_read:
        mov     r8, rdx             ; save rdx value, because it may be reset after syscall
        mov     rax, 0x02000003     ; syscall for read
        syscall                     ; error sets carry flag and return value (errno) will be saved in rax
        jc      failure             ; if carry flag is set then we know error occured
        jmp     success             

failure:
        mov     r9, rax             ; save value returned from syscall
        call    ___error            ; it returns address to external variable errno
        mov     [rax], r9           ; put returned value from syscall in external variable errno 
        mov     rax, -1             ; set return to -1 as error occured
        ret

success:
        mov     rax, r8             ; set return as number of read lines
        ret