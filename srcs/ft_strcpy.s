		global 	_ft_strcpy

_ft_strcpy:								
		push 	rdi				; push pointer to dst into the stack

copy:
		mov		dl, [rsi]
		mov		[rdi], dl
		cmp		dl, 0					
		jz		return
		inc 	rsi
		inc 	rdi
		jmp 	copy

return:
		pop 	rdi				; pop pointer to dst from the stack
		mov		rax, rdi				
		ret