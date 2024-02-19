
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; add your code here
.code
mov cx,5
lea si,arr                       
lea di,arr2
do:      
    mov al, [si]   
    mov bl,al
    mul ax   
    mul bx
    mov [di],al
    mov [di+1],ah
    inc si
    inc di       
    inc di
    loop do
ret            


.data 

arr db 1,2,3,4,5
arr2 dw 5 dup (?)