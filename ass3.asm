;将内存ffff:0~ffff:b中的数据拷贝到0:0200~0:020b单元中
assume cs:codesg
codesg segment
    mov cx,6
    mov dx,0
    mov ax,0ffffh
    mov ds,ax
    mov ax,0020h  ;es为附加段地址寄存器
    mov es,ax

 l: mov bx,[dx]
    mov es:[dx],bx
    add dx,2
    loop l

    mov ax,4c00h
    int 21h
codesg ends
end