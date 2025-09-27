section .text
global ft_strcpy
; rdi = adresse de la première chaîne (dest)
; rsi = adresse de la deuxième chaîne (src)
; rax = valeur de retour

ft_strcpy:
	mov rax, rdi
	.loop:
		mov bl, byte [rsi]
		mov byte [rdi], bl
		cmp bl, 0
		je .end
		inc rdi
		inc rsi
		jmp .loop
	.end:
		ret

section .note.GNU-stack noalloc noexec nowrite align=1
