; Name : Tert 
; Executable file : Assembly 
; Author : Paschal Ahanmisi 
; Date : 22-3-2022


SECTION .data 
    lpCnt dq 15 
    sum dq 0 
SECTION .bss 
SECTION .text
    global _start 


_start : 
    mov rcx , qword[lpCnt]
    mov rax , 1 
sumLoop : 
    add qword[sum], rax
    add rax , 2 
    dec rcx 
    cmp rcx , 0 
    jne sumLoop
end : 
    ; function to exit terminate 
    mov rax , 60 ; sys_exit function to be called 
    mov rdi ,0 ; excutable to return no function 
    syscall ;