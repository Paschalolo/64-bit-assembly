; dISCARD DUMP FILE 
; DO NOT OPEN NOT FOR USE 
SECTION .data 
    bVal db 0;
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
