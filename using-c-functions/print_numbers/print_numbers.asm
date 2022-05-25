;author:      pepe
;date:        05/25/2022
;compile:     nasm print_numbers.asm -f elf64
;linkedition: gcc print_numbers.o <other libs> -no-pie -o print_numbers.out
;compile and linkedit: make

global main

extern printf

section .data 
	n1 dd 1101b	; alternative: 0b1101  
	n2 dd 1Ah 	; alternative: 0x1A
	msgIntro	db "both numbers are defined as 32-bit", 10, 10, 0
	msgOctal 	db "Printing numbers in octal      : %o %o", 10, 0 
	msgDecimal 	db "Printing numbers in decimal    : %i %i", 10, 0 
	msgHex 		db "Printing numbers in hexadecimal: %x %x", 10, 0 
section .bss  
		

section .text

main: 
	mov rdi, msgIntro
	mov rax, 0
	call printf

	mov rdi, msgDecimal
	mov rsi, 0
	mov rsi, [n1]
	mov rdx, 0
	mov rdx, [n2]
	mov rax, 0
	call printf

	mov rdi, msgOctal
	mov rsi, 0
	mov rsi, [n1]
	mov rdx, 0
	mov rdx, [n2]
	mov rax, 0
	call printf
	
	mov rdi, msgHex
	mov rsi, 0
	mov rsi, [n1]
	mov rdx, 0
	mov rdx, [n2]
	mov rax, 0
	call printf
	ret
