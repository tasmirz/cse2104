
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
.code

mov bl,[var]
call prime
ret  


prime proc
   cmp bl,1
   je end
   cmp bl,2
   je done
   
   
   mov bh,2 ; bh =i , bl =n
   
   
   loo:
   mov al,bh
   mul bh   
   cmp al,bl
   jge done ; end if I^2 =n 
   
   mov ax,0
   mov al,bl
   div bh
   
   cmp ah,0 
   jz end
   
   inc bh 
   jmp loo 
prime endp

done:   
    mov si, offset st
    mov [si],'P'
    mov [si+1],'r'
    mov [si+2],'i'
    mov [si+3],'m'
    mov [si+4],'e'
    ret 
end:
    mov si, offset st
    mov [si],'N'
    mov [si+1],'o'
    mov [si+2],'t'
    mov [si+3],' '
    add si, 4
    mov [si],'P'
    mov [si+1],'r'
    mov [si+2],'i'
    mov [si+3],'m'
    mov [si+4],'e'
    ret
.data
var db 11
st db 10 dup (?)





