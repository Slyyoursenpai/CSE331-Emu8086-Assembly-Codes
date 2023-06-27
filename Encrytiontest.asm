 include 'emu8086.inc'
.model small
.stack 100h
.data
 string db ''
 encrypted db ''
.code

main proc
mov bx, @data
mov ds, bx

mov dx,6
call get_string

mov ax,0
mov bx,0

lea di,string
lea si,encrypted 
mov cx,5

encrypt:
mov dl,[di]
cmp dl,'z'
jz z_buffer
mov al,[di]  
add al,1
mov [si],al
mov al,0
inc di
inc si
mov dx,0
loop encrypt
jmp output

z_buffer:
mov [si],'a'
inc si
inc di
jmp encrypt
mov dx,0

output:
mov cx,0
mov cx,5
mov si,0
lea si,encrypted
printn ' '
printn 'The encryption is: '
show:
mov ah,02h
mov dx, [si]
int 21h
inc si
loop show





define_print_num
define_print_num_uns
define_print_string
define_get_string
endp main
end main
