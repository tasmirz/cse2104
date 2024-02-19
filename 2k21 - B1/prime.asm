org 100h

.code 
lea si, number
mov bx,0
mov cx,2; = i
mov dx,0
here:       
     mov ax,1 
     mul cx
     mul cx; i^2
     
     
     cmp ax,[si]
     jg yay    
     
     mov dx,0
     mov ax, [si]
     div cx
     
     
     cmp dx,0
     je done
     mov dx,0 
     inc cx
     jmp here
     
yay:
    mov ah,09h
    mov dx, offset msg
    int 21h
    ret   
done:
    mov ah,09h
    mov dx,offset msg2
    int 21h
    ret
    
.data
number dw 97
msg db "is a prime$" 
msg2 db "not a prime$"