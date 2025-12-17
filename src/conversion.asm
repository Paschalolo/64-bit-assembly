
; Name : Ahnmsis Pascahl 
; Execuatbele : conversion
; Purpose : to convert numbers to string

SECTION .bss ; section to store uninitialized data 
	FinalMessage resb 100
SECTION .data ; section to store initiialized data 
	SYS_exit equ 60 ; call for terminaltion 
	EXIT_SUCCESS equ 0 ; exit succesfully 

	; Data string 
	Message db "The number you write is " 10 
	Messagelen equ $-Message
	
	; Look up table for ASCII conversion 
	ASCII_TABLE db 0X30, 0X31, 0X32 , 0X33, 0X34 , 0X35
		    db 0X36 ,0X37, 0X38 , 0X39
SECTION .text ; section taht contains the code
	global _start 
_start : 
	mov r12 , 9; 


: conversion using table look up and writing function 
Write : 	
	mov rax , 0X01 ; syscall for write function 
	mov rdi , FinalMessage  
	mov rsi ,  Message
	mov rdx , Messagelen
	syscall ; 
	mov rax , ASCII_TABLE
	mov r10 , byte[rax + r12 * 1]

	mov rax , 0X01 ; syscall for write function                                               
        mov rdi , FinalMessage + MessageLen                                                       
        mov rsi ,  Message                                                                       
	mov rdx , Messagelen   
	syscall ; 

; termination of the program 
Exit : 
	mov rax , SYS_exit 
	mov rdi , EXIT_SUCCESS
	syscall 
