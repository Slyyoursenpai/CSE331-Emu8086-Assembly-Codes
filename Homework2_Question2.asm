include 'emu8086.inc'
.model small
.stack 100h
.data
arr1 db 1,1,1,1,1
arr2 db 5,4,3,2,1
arr_sum db 5 dup(?) 
.code

main proc
mov bx, @data
mov ds, bx

lea di,arr1
lea si,arr2
lea bx,arr_sum  ; BX points to arr_sum
mov cx,5
add_array:
mov ax,[di]
mov dx,[si]
add ax,dx
mov [bx],ax
inc si
inc di
inc bx
loop add_array

mov ax,0
mov bx,0
mov cx,0
mov dx,0

lea bx,arr_sum
mov cx,5
display:
mov al,[bx]
call print_num 
inc bx
loop display

define_print_num
define_print_num_uns
endp main
end main



