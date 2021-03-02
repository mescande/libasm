SECTION .text
global	ft_strcmp

ft_strcmp:
	mov		r8, 0
	mov		r9, 0
	mov		r8b, [rdi]
	mov		r9b, [rsi]
	cmp		r8b, 0
	jz		diff
	cmp		r9b, 0
	jz		diff
	cmp		r8b, r9b
	jnz		diff
	inc		rdi
	inc		rsi
	jmp		ft_strcmp

diff:
	sub		r8, r9
	mov		rax, r8
	ret
