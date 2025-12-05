; Simple program demonstrating program format and layout 
; Author : Ahanmisi Paschal 
; Date : July 18, 2022

; ******************************************************
; Some basic data decleration 

; Define constants 
SECTION .bss ; FOr uninitialized data 
SECTION .data ; For initialized data 
    EXIT_SUCCESS equ 0; succesful operations 
    SYS_exit equ 60; call code to terminate 

    ; Byte (8-bit ) vairable decleratiosn 
    bVar1  db 17 ; 
    bVar2 db 9 ; 
    bResult db 0 ; 

    ;----------
    ; Word (16-bit) vairable decleration 
    wVar1 dw 17000 ; 
    wvar2 dw 9000; 
    wResult dw 0 ; 


    ;-------------
    ; Word (16-bit) vaiarble decleration 
    dVar1 dd 17000000; 
    dVar2 dd 9000000; 
    dResult dd 0 ; 

    ; ----------
    ; quadword (b4-bit ) vairible 
    qvar1 dq 17000000000 ; 
    qVar2 dq 9000000000;
    qResult dq 0 ; 
SECTION .text ; FOr code data 
    global _start 

_start: 
    ; Perform a series of very basic addition operations to demonstarate 
    ; a basic program format 
    ; byte exampe 

    ; bResult = bVar1 + bvar2;
    mov al , byte[bVar1];
    add al, byte[bVar2];
    mov byte[bResult] , al ; move the result of the addtion to bResult 

    ; Word example 
    mov ax , word[wVar1]; mov wVar1 to ax 
    add ax , word[wvar2]; add al + wVar2
    mov word[wResult], ax ; mov result to wResult 

    ; Double word example 

    mov eax , dword[dVar1]; move dVar1 to eax 
    add eax , dword[dVar2]; add eax + dVar2
    mov dword[dResult], eax ; mov result to dResult 

    ; Quadword example 

    mov rax , qword[qvar1]; move qvar1 to rax 
    add rax , qword[qVar2]; add rax to qvar 2 
    mov qword[qResult], rax ; put result in qResult 



    ;Done terminating the process 


    ; sysycall to end ; 
    mov rax , SYS_exit ; mov syscall number to rax 
    mov rdi , EXIT_SUCCESS; 
    syscall; CALL SYSCALL TO SYS_EXIT 