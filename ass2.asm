;计算ffff:0~ffff:b字节单元中的数据的和，结果存在dx中
assume cs:codesg
codesg segment
    mov ax,0ffffh
    mov ds,ax
    mov ax,0
    mov cx,12
    mov dx,0
    mov bx,0

 l: mov bl,ds:[ax]
    add dx,bx
    inc ax
    loop l

    mov ax,4c00h
    int 21h
codesg ends
end