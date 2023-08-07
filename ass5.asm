;利用栈，将程序中定义的数据逆序存放
assume cs:code,ss:stack,ds:data
data segment
    dw 0011h,0022h,0033h,0044h
data ends
stack segment
    dw 0,0,0,0,0,0,0,0
stack ends
code segment
start:
    mov ax,stack
    mov ss,ax    ; ss为栈段地址寄存器
    mov sp,16    ; ss:sp为栈顶指针，sp为偏移地址
    mov ax,data
    mov ds,ax
    mov cx,4
    mov bx,0

 l: push [bx]
    add bx,2
    loop l

    mov bx,0
    mov cx,4
 s: pop [bx]
    add bx,2
    loop s

    mov ax,4c00h
    int 21h
code ends
end start