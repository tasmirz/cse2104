
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; add your code here
     
.code
mov si, offset arr
mov cx, 3
outer:
      mov di, si
      mov bx,cx  
      dec bx
      inner:
        
        inc di
        inc di  
        mov dx,[si]
        cmp dx,[di]
        jg swap
        jmp not_swap
        swap:     
        mov dx,[si]
        mov ax, [di]
        mov [si],ax
        mov [di],dx
        not_swap: 
        dec bx
        cmp bx,0
        
        jne inner 
        inc si
        inc si
loop outer

ret


.data
arr dw 8, 1, 4, 6, 2



