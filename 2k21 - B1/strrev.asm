
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.code         
mov si, OFFSET str
mov di, OFFSET str   
add di,len
dec di

mov ax,len
mov bl,2
div bl  

mov ah,0
mov cx, ax
      
      
      
here:
  mov dl,[si]
  mov dh,[di]
  mov [si],dh
  mov [di],dl
  inc si
  dec di
loop here
ret


.data

str db 'Hello World'
len equ ($-str)





