; SUM OF SQAURE OF A LOOP 
; AUthor : Paschal Ahanmisi 


section .data 
 ; ------------
 ; Define constants 
    SUCCESS equ 0 ; succesful operation 
    SYS_exit equ 60 ; call code for terminate 

    ; define data 
    n dd 10 
    sumOfSquares dq 0 


section .text
    global _start 

_start: 
    mov rbx , 1 ; i 
    mov ecx , dword[n]
SumLoop:
    mov rax , rbx 
    mul rax 
    add qword[sumOfSquares], rax 
    inc rbx
    cmp rbx , 10
    jne SumLoop
last :  
    mov rax , SYS_exit
    mov rdi  , SUCCESS
    syscall 
    
