global main

; We're using puts function so we need to tell gcc.
extern puts

section .data
	greeting db "Hello world!", 0 ; db = define byte.

section .text

main:
	mov rdi, greeting	; first parameter goes to rdi
	call puts		; call function
	ret			; end of program
	
