
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
.code
    mov ax,[var]
    call sum 
    mov [count],bx
ret  

sum proc
    mov cx,5
    mov bx,0 
    loo:
        mov dx,0
        push cx
        mov cx,10
        div cx
        pop cx
        add bx, dx
    loop loo
ret        
         
sum endp
.data
var dw 9876
count dw 0            
           


