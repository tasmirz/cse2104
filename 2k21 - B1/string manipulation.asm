
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

.code
org 100h
    

mov si, offset arr
mov [si],'1'
inc si
mov [si],'6'
mov ah,9

mov dx, offset arr
int 21h
; add your code here

ret          


.data  

arr db '2107071'
arr2 db "$"





