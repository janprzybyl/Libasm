        global  _ft_strcmp

_ft_strcmp:
        xor     rcx, rcx                ; we're gonna use it as a counter     

        cmp     rdi, 0                  ; checking if given parameter isn't NULL
        jz      return
        cmp     rsi, 0
        jz      return

        jmp     compare                 ; let's begin

increment:
        inc     rcx

compare:
        mov     al, BYTE [rdi + rcx]
        mov     dl, BYTE [rsi + rcx]
        cmp     al, 0
        jz      subtract
        cmp     dl, 0
        jz      subtract
        test    al, dl
        je      increment
        mov     rax, 1
        jmp     return

subtract:
        sub     al, dl
        movsx   rax, al

return:
        ret