
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
       
.code
lea si, inp
add si, len
dec si
         
         
lea di, inp
add di, len
add di, len2
add di,1 ; 2-1

mov bx, len
sub bx, len2
add bx,2

mov ax, 0
mov cx, len

 here:     
     cmp ax,bx
     jne then
     mov [di],' '
     dec di
     push cx
     mov cx,len2 
     push si  
     lea si, su
     add si,len2
     dec si
     loo:
        push ax
        mov ah, [si]
        mov [di],ah
        pop ax 
        dec di
        dec si
     loop loo
     pop si
     pop cx
     mov [di],' '
     dec di
     jmp k
     then:
     push ax       
     mov ah, [si]  
     mov [di],ah
     pop ax   
     
     k: 
     dec di
     dec si
     inc ax
 loop here           

ret
                    
.data         
su db "love"
len2 equ  ($-su)
inp db "wekuet" 
len equ ($-inp)

