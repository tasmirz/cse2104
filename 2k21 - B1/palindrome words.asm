org 100h
.code
mov cx,len
add cx,1
lea si, str
lea di, str
mov [si+len],' '
loo:      
    cmp [si],' '
    je then
    cmp cx,1
    je then
    jmp else
    then:   
        pusha
        mov cx,0
        add cx,si
        sub cx,di
        dec si
        then_:
        mov bh, [di]
        mov bl,[si]
        cmp bh,bl 
        jne do
        jmp doe
        do: 
            jmp outnow
        doe:
        inc di
        dec si
        loop then_
    popa
    mov dx,1
    ret
    outnow:
    popa
    inc si
    mov di,si
    dec si
    jmp common        
    else:
    common:
    inc si
    loop loo
ret
.data
str db "you dont know any saippuakivikauppia"
len equ $-str
