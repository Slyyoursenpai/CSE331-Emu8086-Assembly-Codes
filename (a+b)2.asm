include 'emu8086.inc'

.model small
.stack 100h 
.data    
a dw 0
b dw 0
a2 dw 0
b2 dw 0
2ab dw 0  


.code

main proc
    
    mov dx, @data
    mov ds, dx
 ;; taking input and moving to variables   
 call scan_num
 mov a,cx
 mov cx,0
 mov ax,0
 call scan_num
 mov b,cx
 mov cx,0
 mov ax,0
 
 
 calc_2ab:
 mov ax,a
 mov bx,b
 mul bx
 mov 2ab,ax
 mov ax,0
 mov ax,2
 mul 2ab
 mov 2ab,ax
 
 
 calc_a_square:
 mov ax,a
 mov bx,a
 mul bx
 mov a2,ax
 mov ax,0
 mov bx,0 
  
 calc_b_square:
 mov ax,b
 mov bx,b
 mul bx
 mov b2,ax
 mov ax,0
 mov bx,0 
 
 
 calc_formula:
 mov ax,2ab
 mov bx,a2
 mov cx,b2
 add ax,bx
 add ax,cx
 
 ;;storing in specific memory location to check in aux
 mov bx, 8000h
 mov ds,bx
 mov ds:[0007h],ax 
    
    
            
define_scan_num
define_print_num
define_print_num_uns     
endp main
end main

