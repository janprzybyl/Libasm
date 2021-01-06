		global _ft_strcpy

_ft_strcpy:
		xor rax, rax				
		cmp rsi, 0					; if dst parameter is NULL...
		jz return					; ...return
		jmp copy					; otherwise copy the string

increment:
		inc rax						

copy:
		; Remember that you can't move someting from memory directly to memory. You have to load it to register first.
		; We can't copy the BYTE value to 64-bit register. We need to use 8-bit register as follows

		mov	dl, BYTE [rsi + rax]	; copy given byte to dl register
		mov BYTE [rdi + rax], dl	; then from dl register copy to the given byte in dst parameter
		cmp dl, 0					
		jnz increment				; increment if it's not the end of a string

return:
		mov rax, rdi				; we set 
		ret