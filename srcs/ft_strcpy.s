SECTION .text
global	ft_strcpy

ft_strcpy:							;initialise
	mov		rax, rdi

nextchar:							;iterate on char
	mov		r8, [rsi]				;cpy
	mov		[rdi], r8
	cmp		byte [rsi], 0			;verify \0
	jz		end
	inc		rdi
	inc		rsi
	jmp		nextchar

end:
	ret
