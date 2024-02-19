main:
    mov ax, 10;
    test ax,1;
    jz even;
    jmp odd;
    
even:
    mov bx,2
    jmp en
odd:
    mov bx,1
    jmp en
    
en: 
    ret 
