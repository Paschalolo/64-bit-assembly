  
  
SECTION .text 
    global  unint64_rotate

unint64_rotate:
    mov cl , sil
    rol rdi , cl 
    mov rax , rdi 
    ; -------- return ------------------; 
    ret;

SECTION .note.GNU-stack noalloc noexec nowrite progbits