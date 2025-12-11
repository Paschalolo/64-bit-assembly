; Executable : Address 
; Date : 20-2-23
; Author : Pascahl Ahanmisi

SECTION .bss ; uninitialized data 
SECTION .data ; initialized datad 
SECTION .text ; code
	global _start ; entry point for the linker 

_start : 
; Examples of code 
; mov rax , qword[var1] ; value of var1 in rax 
; mov rax , var1 ; value of address var1 in rax 
; sometimes specifications are needed 
; inc [rax] ; error 
; inc byte[rbx] 
; inc word[rbx]
; inc dword[rbx]

; register mode addressing
; mov eax . ebx 
; both eax and ebx are in register addressing mode

; immediate addressing mode 
; mov eax , 123 
; mov eax , 0X12345678

; register mode addressing
; mov rax , qword[qNum]


 
