section .text
global ft_write
extern __errno_location

ft_write:
	mov rax, 1
	syscall
	cmp rax, 0
	jge .end
	neg rax
	mov rdi, rax
	call __errno_location
	mov [rax], edi
	mov rax, -1
	.end:
		ret

section .note.GNU-stack noalloc noexec nowrite align=1
