global main
extern puts
section .data
  mensaje db  "Hola mundo",0
section .text
main:
  mov edi, mensaje ; en 64-bit hay que usar rdi
  call puts
  ret
