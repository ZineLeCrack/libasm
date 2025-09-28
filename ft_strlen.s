section .text
global ft_strlen

ft_strlen:
	xor rax, rax
	.loop:
		cmp byte [rdi], 0
		je .end
		inc rdi
		inc rax
		jmp .loop
	.end:
		ret

section .note.GNU-stack noalloc noexec nowrite align=1
