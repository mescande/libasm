SECTION .text
global	ft_strcmp

ft_strcmp:
	mov		r8, [rdi]
	mov		r9, [rsi]
	cmp		r8, 0
	jz		diff
	cmp		r9, 0
	jz		diff
	cmp		r8, r9
	jnz		diff
	inc		rdi
	inc		rsi
	jmp		ft_strcmp

diff:
	sub		r8, r9
	mov		rax, r8
	ret
