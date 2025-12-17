; Name : stk 
; Author : Pascahl Ahanmsisi 
 ; Stackking 
SECTION .bss 
SECTION .data
	EXIT_SUCCESS equ 0 ; succesful operation 
	SYS_exit equ 60 ; call code for terminate 

	; Define data 
	numbers dq  121 , 122, 123, 124 ,125 
	len dq 5 ; length is equal to five 
	; ******************************************************************

SECTION .text 
	global _start 
_start : 
; Loop to put numbers on the stack 
	mov rcx , qword[numbers]
	mov rbx , numbers 
	mov r12 , 0 
	mov  rax , 0 
pushLoop:
	push qword[rbx+ r12 * 8]; 
	inc r12 ; 
	cmp r12 , 5 
	jne pushLoop

	; All numbers are on the stack(in revrse order ) loop to get tehm back off , put them back into the original list 

	mov rcx , qword[len]
	mov rbx , numbers 
	mov r12, 0 
popLoop: 
	pop rax 
	mov qword[rbx + r12*8] , rax 
	inc r12 
	cmp r12 , 5 
	jne popLoop
	;Done terminate program 

; syscall to terminate 
Exit : 
	mov rax , SYS_exit 
	mov rdi , EXIT_SUCCESS 
	syscall ; make system terminate call 
	
