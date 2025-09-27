section .text
global ft_strdup
extern ft_strlen
extern malloc

ft_strdup:
	mov rbx, rdi
	call ft_strlen
	mov rdi, rax
	inc rdi
	call malloc
	cmp rax, 0
	je .end
	xor rcx, rcx
	.loop:
		mov dl, byte [rbx + rcx]
		mov byte [rax + rcx], dl
		cmp dl, 0
		je .end
		inc rcx
		jmp .loop
	.end:
		ret

section .note.GNU-stack noalloc noexec nowrite align=1
