
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

mov ax, 
cmp ax, 79
jg ap
cmp ax, 74
jg a
cmp ax, 69
jg am
cmp ax, 64
jg bbp
cmp ax, 59
jg ba
cmp ax, 54
jg bm
cmp ax, 49
jg cp
cmp ax, 44
jg c
cmp ax, 39
jg cm
cmp ax, 32
jg d
jmp f


ap:
    mov ax,'a+'
    jmp en
a:  mov ax,'a'
    jmp en   
am:  mov ax,'a-'
    jmp en     
bbp:
    mov ax,'b+'
    jmp en
ba:  mov ax,'b'
    jmp en   
bm:  mov ax,'b-'
    jmp en     
cp:
    mov ax,'c+'
    jmp en
c:  mov ax,'c'
    jmp en   
cm:  mov ax,'c-'
    jmp en  
d:  mov ax,'d'
    jmp en   
f:           mov ax,'f'
    jmp en
    
    

en:
ret




