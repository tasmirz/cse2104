
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; add your code here
.code
mov cx,1        
lea si,arr
lea di,res
mov bx,0                     
do:      
    mov al, [si]
    push cx   
    mov cx,ax
    mov ax,1
   fact:        
    mul cx
    loop fact   
    pop cx       
    inc si   
    add bx,ax 
    mov ax,1
    loop do    

mov [di],bl
mov [di+1],bh     
ret         


 


.data 

arr db 6
res dw 0
