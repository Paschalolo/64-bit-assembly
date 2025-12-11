; Executable : Foody 
; Author : Paschal Ahanmisi


SECTION .bss ; section for unitializede data
SECTION .data ; section for initialized data 
	MY_TEXT db "Hello coming home", 10 ; text to print to screen 
	MY_TEXT_LEN equ $-MY_TEXT ; count of the size of text
SECTION .text ; section for code data 
	global _start 
_start : 
	; ---- making system call to system write ---------
	mov rax , 0X01 ; syscall write number 
	mov rdi , 0X01 ; making the call to standard output 
	mov rsi , MY_TEXT ; location of char buffer for text 
	mov rdx , MY_TEXT_LEN ; size of the string 
	syscall ; call sycall to sys_write
 
	; ---- making system call to system terminate --------
	mov rax , 0x3C; call the sys_exit function
	mov rdi , 0X00 ; call no erro on exit  
	syscall ; sys_terminate 
