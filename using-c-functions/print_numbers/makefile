print_numbers.out: print_numbers.o
	gcc print_numbers.o -no-pie -o print_numbers.out

print_numbers.o: print_numbers.asm
	nasm print_numbers.asm -f elf64 
