section .data
    text1 db "Hello, World!" ;
      newline db 0xA

    section .bss
      name resb 16 ; allowed reserved bytes for printed characters in this example 16 not more

      section .text ; start the actual program
        global _start


_start:
      ; sys_write syscall for printing out our text1 database with Hello, World!
      mov rax, 1 ; sys_write 
      mov rdi, 1 ; using stdout for storing the characters
      mov rsi, text1
      mov rdx, 13
      syscall
      ; sys_write syscall for printing out a new line after exiting the program
      mov rax, 1 ; sys_write
      mov rdi, 1 ; using stdout for storing the characters
      mov rsi, newline
      syscall
      ; sys_exit syscall for exiting the program after execution
      mov rax, 60 ; sys_exit
      mov rdi, 0
      syscall

      
