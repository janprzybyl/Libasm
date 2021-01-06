		global _ft_strcpy

_ft_strcpy:
		xor	rax, rax				
		cmp	rsi, 0					; if dst parameter is NULL...
		jz	return					; ...return
		jmp	copy					; otherwise copy the string

increment:
		inc	rax						

copy:
		; Note!
		; You can't move someting from memory directly to memory. You have to load it into register first.
		; You can't copy the BYTE value to 64-bit register. You need to use 8-bit register (which is 'dl').
		; For reading memory bytes use square brackets, inside of which you put the address (pointer) you want to access.
		; It's a good idea to explicitly write the storage size, which is BYTE for a normal string.

		mov	dl, BYTE [rsi + rax]	; copy given byte to dl register
		mov	BYTE [rdi + rax], dl	; then from dl register copy to the given byte in dst parameter
		cmp	dl, 0					
		jnz	increment				; increment if it's not the end of a string

return:
		mov	rax, rdi				; we set 
		ret