include 'emu8086.inc'

.model small
.stack 100h 
.data    
string dw 2222h

.code

main proc
    
    mov dx, @data
    mov ds, dx

 mov ax,string
 mov cx,0
 
 shift_left: ;;; shifts lefts and checks for 1
 shl ax,1
 jnc not_one
 inc cx
 
 
 not_one:  ;;; checks if all 1s are shifted 
 cmp ax,0
 jnz shift_left:
 
 


endp main
end main

;


