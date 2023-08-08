;求和
assume cs:code
code segment
    dw 0033h,0044h,0011h,0022h
    ;db 定义字节
    ;dd 定义双字
start:       ;提示代码的开始位置
    mov bx,0
    mov cx,4
    mov dx,0

 l: mov ax,cs:[bx]
    add dx,ax
    add bx,2
    loop l

    mov ax,4c00h
    int 21h
code ends
end start   ;除了通知编译器程序结束，还通知编译器程序入口在什么地方
