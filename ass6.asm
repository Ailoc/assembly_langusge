 ;大小写转换问题,程序段前100h(256字节空间)为->程序段前缀psp
 ;查看data中定义的数据需要-d ds:100
assume cs:code,ds:data
data segment
    db 'BasIc'     ;将其中的小写字母转换为大写
    db 'inForMatiOn'   ;将其中的大写字母转换为小写
data ends
code segment
start:
    mov ax,data
    mov ds,ax

    mov cx,5
    mov bx,0
 l: mov al,[bx]
    and al,11011111b
    mov [bx],al
    inc bx
    loop l

    mov cx,11
    mov bx,5
 s: mov al,[bx]
    or al,00100000b
    mov [bx],al
    inc bx
    loop s
    
    mov ax,4c00h
    int 21h
code ends
end start
