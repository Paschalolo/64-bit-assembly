; dISCARD DUMP FILE 
; DO NOT OPEN NOT FOR USE 
SECTION .data 
    bVal db 0;
    bNum db 42 
    wNum dw 4321 
    dNum dd 420000
    qNum dq 42000000000
    dquad1 ddq 0X1A00000000000000
    dquad2 ddq 0X2C00000000000000
    dqSum ddq 0
SECTION .text
    global _start 
_start : 
    mov eax , 100 ; eax = 0X00000064
    mov rcx , -1 ; rcx = 0XFFFFFFFFFFFFFFFF
    mov ecx , eax

    mov rax , 500 ; 
    mov byte [bVal] , al 
    ; Widening conversions 
    mov al , 50 ; 
    mov rbx , 0 ; 
    mov bl , al;
    movzx cx , byte[bVar];
    movzx ebx , cx ; Unsigned conversions 
    movzx rbx , cl ; 

    movsx eax, -byte[bVar] ; signed conversion rtot upper limit 
    movsxd rax , dword[bVal]; used to convert a double word to a quad word 

    ; Arithmetic for integers 

    add rax , rbx ; addition of vairables 


    ; incermentation 

    inc rax ; 
    inc byte[bNum]; incremnt bNum by 1 
    inc word[wNum]; increment  word by 1 
    inc dword[dNum]; incremnt double word by  1 
    inc qword[qNum]; increment quad word by 1 
    ; PLaying with larger word like 128 bits 

    mov rax , qword[dquad1];
    mov rdx , qword[dquad1 + 8 ];
    add rax ,qword[dquad2];
    adc rdx , qword[dquad2+ 8 ];

    mov qword[dqSum], rax ; 
    mov qword[dqSum + 8 ], rdx ; 

SECTION .data
    dNum1 dd 73000
    dNUm2 dd 42000
    dAns dd 0 

    qNum1 dq 7300000000
    qNum2 dq 7300000000
    dqAns dq 0 


; Lets vgo 
    mov eax  , dword[dNum1];
    sub eax , dword[dNUm2];
    mov dword[dAns] , eax 

    mov rax , qword[qNum1];
    mov 
    ; dec -> decremetn count 

