SECTION	.text
global	ft_write
extern __errno_location

ft_write:
	mov 	rbx, rdi		;fd
	mov 	rcx, rsi		;str

	mov		rax, 1			;invoke SYS_WRITE (opcode 1)
	syscall
	cmp		rax, 0
	jge		end				;if no errors, end function
	mov		r12, rax		;save error value
	call	__errno_location;find errno pointer location
	neg		r12				;set error value positive
	mov		[rax], r12		;put error value in errno
	mov		rax, -1			;set return value

end:
	ret
