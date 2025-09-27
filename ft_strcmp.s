section .text
global ft_strcmp

ft_strcmp:
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
		xor eax, eax
		ret
	.end:
		movzx eax, al
		movzx ebx, bl
		sub eax, ebx
		ret

section .note.GNU-stack noalloc noexec nowrite align=1
