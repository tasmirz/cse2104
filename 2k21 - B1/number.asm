
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h  
.code
mov si,offset data
mov [si],0 
here:

;scan
mov ah, 1h
int 21h    
cmp al,13
je done
;get val
and al, 00001111b
mov bl, al
; al is now on bl

mov si, offset data 
mov ax, [si]
; data on ax

mov dx,10 
mul dx;
;data on ax
         
         
mov bh,0
add ax,bx
mov [si],al
mov [si+1],ah
jmp here
     
done:

mov si,offset data

mov cx, [si]
ret

                              
.data
data dw 10 dup (0)                             
                              
                              


