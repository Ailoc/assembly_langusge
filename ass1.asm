;将ffff:6字节单元中的数据乘以3，将技术结果放入dx中
assume cs:codesg

codesg segment
    mov ax,0ffffh
    mov ds,ax
    mov bx,6
    mov ax,0
    mov al,[bx] ;常量作为便宜地址时前面需要加上段前缀
    ; mov al,ds:[6]
    mov dx,0
 
    mov cx,3
 l: add dx,ax
    loop l

    mov ax,4c00h
    int 21h
codesg ends
end