SECTION	.text
global	ft_strdup
extern	malloc
extern	ft_strlen
extern	ft_strcpy

ft_strdup:
	mov		r8, rdi			;save src
	call	ft_strlen
	mov		rdi, rax		;put len in parameter for malloc
	call	malloc
	cmp		rax, 0			;verif malloc return vallue
	jz		mallocerror
	mov		rsi, r8			;prepare values for cpy
	mov		rdi, rax
	call	ft_strcpy
	ret

mallocerror:
	mov		rax, 0			;set NULL return
	ret
