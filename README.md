# assembler-intel-8086

Some programs written using NASM and c functions (puts, printf, gets...)

## Scaffold of a program...

```asm
global main

section .data
	; 'variables' with content
section .bss
	; 'variables' with no initial content
section .text
main:
	; your program here

ret
```

## Compiling, linkediting, etc

Note: `-f` is the format. It changes depending on target architecture. `-f elf64` is for gnu/linux 64-bit.

```asm
$ nasm file.asm -elf64
```
Produces a `.o` file

Now link it with gcc. Note flag: `-o <output_file_name>`

```asm
$ gcc file.o -no-pie -o file.out
```