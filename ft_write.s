section .text
global ft_write
extern __errno_location

ft_write:
	mov rax, 1
	syscall
	cmp rax, 0
	jge .end
	neg rax
	mov rbx, rax
	call __errno_location
	mov [rax], ebx
	mov rax, -1
	.end:
		ret

section .note.GNU-stack noalloc noexec nowrite align=1
