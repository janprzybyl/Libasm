        global  _ft_strchr

_ft_strchr:
        cmp     rdi, 0              ; check if string isn't a null
        jz      failure

find_char:
        movsx   rdx, byte [rdi]     ; movesx allow us to save 8-bit value to the 64-bit register
        cmp     rdx, rsi            ; check if we found the character
        je      success             
        cmp     rdx, 0              ; check if we are arleady at the end of the string
        jz      failure             ; if so return null
        inc     rdi                 ; move pointer further
        jmp     find_char

failure:
        mov     rax, 0
        ret

success:
        mov     rax, rdi            ; return pointer to the first occurence of the given character
        ret