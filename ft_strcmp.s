section .text
global ft_strcmp

ft_strcmp:
	xor rax, rax
	xor rbx, rbx
	.loop:
		mov al, byte [rdi]
		mov bl, byte [rsi]
		cmp al, bl 
		jne .end
		cmp al, 0
		je .equal
		inc rdi
		inc rsi
		jmp .loop
	.equal:
		xor al, al
		ret
	.end:
		sub eax, ebx
		ret

section .note.GNU-stack noalloc noexec nowrite align=1
