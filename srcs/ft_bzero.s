        global  _ft_bzero

_ft_bzero:
        cmp     rsi, 0              ; checking if second parameter is zero
        jz      return
        jmp     set_to_zero

set_to_zero:
        ; Since each char is one byte, moving by 1 byte moves by 1 char
        ; The rdi register holds address of value, but rsi register holds a value
        ; That's why when you increment rdi you move the pointer forward and in case of rsi you simply increment the value

        mov     byte [rdi], 0       ; set given byte to 0
        inc     rdi                 ; move pointer by 1
        dec     rsi                 ; decrease rsi value by 1
        jmp     _ft_bzero

return:
        ret