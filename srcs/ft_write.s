SECTION	.text
global	ft_write
extern __errno_location

ft_write:
	mov 	rbx, rdi		;fd
	mov 	rcx, rsi		;str

	mov		rax, 4			;invoke SYS_WRITE (opcode 4)
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
