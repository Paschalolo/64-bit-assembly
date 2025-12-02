; Executable name : test 
; Date : 22--5-2023
; Author : Paschal Ahanmisi


SECTION .bss  ; section for unintialized data
SECTION .data ; section for initialized data 
SECTION .text ; section for code 
    global _start ; Program entry point in order to linker to know where to start 


_start : 

   ; ------Exit system call ----
    mov rax , 60; 60 = exit the program 
    mov rdi, 0 ; Return value in rdi = 0 = nothing to return 
    syscall ; Call syscall to exit  