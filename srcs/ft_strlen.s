SECTION	.text
global	ft_strlen

ft_strlen:
	mov		rax, rdi			;save src

nextchar:						;iterate on char
	cmp		byte [rax], 0
	jz		end
	inc		rax
	jmp		nextchar

end:
	sub		rax, rdi			;calculate pointer diff to find len
	ret
