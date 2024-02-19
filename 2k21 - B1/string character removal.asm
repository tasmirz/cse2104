
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt
   
   
org 100h 

.code
lea si, msg
lea di,su
mov ax, 0
mov dx,0
here:    
    mov bl,[si]      
    ;if
    cmp [di],bl
    jne then
    mov [si],' ' 
    inc dx
    inc di
    ;else
    then:
    inc si
    inc ax
    cmp ax, len  
    
    jle here

ret


.data
msg db "we love kuet"
len equ $-msg
su db "evu"
lens equ $-su



