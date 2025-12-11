; Executable : Address 
; Date : 20-2-23
; Author : Pascahl Ahanmisi
; simple example fo the sum and averga efor a list of numbers  
SECTION .data ; initialized datad 
	; Define constraints -----------
	EXIT_SUCCES equ 0  ; ; succesful operation
	SYS_EXIT equ 60 ; call for terminate opeation
;       Define date 
	lst dd 1002,1004,1006,1008,100010
	len dd 5
	sum dd 0 
	; ************************************************
	 
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

; mov eax dword[lst] 
; accesing the elemts using base displacemnet or values 
; mov rax , lst
; mov rsi , 8 

; mov eax , dword[lst+8]
; mov eax , dword[rax + rsi] 
; mov wax , dword[rax + 8]

	mov ecx , dword[len] ; get length value 
	mov rsi, 0; 
	
sumLoop: 	
	mov eax , dword[lst+ (rsi * 4)] ; get lst[rsi]
	add dword[sum] , eax ; update sum 
	inc rsi ; 
	loop sumLoop
; -----------------
; Done terminate program 

last : 
	mov rax , SYS_EXIT; call code for exit 
	mov rdi , EXIT_SUCCES ; exit with success 
	syscall 


