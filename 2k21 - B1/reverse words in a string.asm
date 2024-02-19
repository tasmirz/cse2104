
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h               

.code

lea si, str
lea di, res
mov dx, 0
mov cx, len
mov ax,0
here:   
        
    cmp [si],' '
    je then 
    ;else
    inc dx
    jmp next 
    ;if
    then:
    push ax 
    push cx  
    push si
    mov cx,dx
    here2:     
        dec si 
        mov al, [si]
        mov [di], al
        inc di
    loop here2:
    mov [di],' '
    inc di
    pop si
    pop cx  
    mov dx,0  
    pop ax
    next: 
    inc si 
    
    loop here
    
    ;last one
    cmp ax,0
    jne end
    mov ax,1 
    mov cx,1  
    cmp dx,0
    jg then
    end:

; add your code here

ret                 


.data
str db "ab cd"
len equ $-str
res db len dup (?) 




