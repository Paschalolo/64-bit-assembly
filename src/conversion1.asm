; Name : Pascahal Ahanmsisi 
; Executable : conversion1 
; Simple aprogram to convert to ascii character 

bits 64
SECTION .bss ; section for uninitalized data 
	strNum resb 50 
SECTION .data  ; section for initialized data
	NULL equ 0 
	EXIT_SUCCESS equ 0 ; succesful operation 
	SYS_exit equ 60 ; code for termination 

	; Define data
	TextAb db "There are numbers : "
	TextAbLen equ $-TextAb
	intNum dd 1498
SECTION .text ; section for code data
	global _start 
_start : 
	; comnvert an interger to a ASCII string 
	; __ 
	; PARt A ;  succesive divisiom 
	mov eax , dword[intNum]; get integer value 
	mov  rcx , 0 ; digit count 
	mov ebx , 10 ; set for divign by 10 

divideLoop: 
	mov edx , 0 
	div ebx ; divide number by 10 

	push rdx ; push remainder to stack 
	inc rcx ; imcremnet digit count 

	cmp eax , 0 
	jne divideLoop 

	; Part B conver remainders to store 
	mov rbx , strNum ; get addr of string 
	mov rdi , 0 ; idx 0
	mov rsi , TextAb
	mov rdx , TextAbLen

WriteString : 
	mov al  , byte[rsi+rdi] 
	mov byte[rbx + rdi], al 
	inc rdi 
	cmp rdx, rdi 
	jne WriteString
	add rdi , 1  
popLoop: 
	pop rax ; pop intDigit 
	add al , "0"
	mov byte[rbx+rdi] , al ; string is equal to character 
	inc rdi
	loop popLoop
	mov byte[rbx + rdi ] , NULL

Read : 	
	mov rax , 0X01
	mov rdi , 1
	mov rsi , strNum
	mov rdx , 40
	syscall 
Exit : 
	; Terminate function 
	mov rax , SYS_exit 
	mov rdi, 0 
	syscall 

