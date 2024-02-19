
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.code 

mov cx,whole
sub cx, len   
inc cx
mov bx, offset str

mov dl,0
here:  
    push bx   
    push cx
    mov cx,len
    mov si, bx
    mov di, offset pattern
    inner:      
        mov al,[si]
        mov bl,[di]
        cmp al,bl
        jne out   
        inc si
        inc di
    loop inner
    inc dl
    out:
    pop cx 
    pop bx
    inc bx
loop here;



mov si,offset ans 
mov [si],dl
ret    


.data
pattern db "kuet"
len equ ($-pattern)
str db "kuet kuet kuet" 
whole equ ($-str)   
ans db 0




