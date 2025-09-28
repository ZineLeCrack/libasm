section .text
global ft_strdup
extern ft_strlen
extern ft_strcpy
extern malloc

ft_strdup:
	mov rbx, rdi
	call ft_strlen
	mov rdi, rax
	inc rdi
	call malloc
	cmp rax, 0
	je .end
	mov rdi, rax
	mov rsi, rbx
	call ft_strcpy
	.end:
		ret

section .note.GNU-stack noalloc noexec nowrite align=1
