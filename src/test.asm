; Executable name : test 
; Date : 22--5-2023
; Author : Paschal Ahanmisi


SECTION .bss  ; section for unintialized data
SECTION .data ; section for initialized data 
    EatMsg : db "Eat at Joe's!", 10 
    EatLen : equ $-EatMsg
SECTION .text ; section for code 
    global  asmFunc ; Program entry point in order to linker to know where to start 


asmFunc : 
    mov rax , 1 ; 1 = sys_write for syscall 
    mov rdi , 1 ; 1 = fd for stdout ; i.e ., write to the terminal window 
    mov rsi, EatMsg; put the address of message string in rsi 
    mov rdx, EatLen; Length of string to be written in rdx 
    syscall; call syscall to print 

    ; -------- return ------------------; 
    ret;
   ; ------Exit system call ----
    ; mov rax , 60; 60 = exit the program 
    ;mov rdi, 0 ; Return value in rdi = 0 = nothing to return 
    ;syscall ; Call syscall to exit  