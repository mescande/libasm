SECTION	.text
global	ft_read
extern	__errno_location

ft_read:
	mov		rbx, rdi			;fd
	mov		rcx, rsi			;str

	mov		eax, 3				;invoke SYS_READ (opcode 3)
	int		80h
	cmp		rax, 0
	jge		end				;if no errors, end function
	mov		r8, rax			;save error value
	call	__errno_location;find errno pointer location
	neg		r8				;set error value positive
	mov		[rax], r8		;put error value in errno
	mov		rax, -1			;set return value

end:
	ret
