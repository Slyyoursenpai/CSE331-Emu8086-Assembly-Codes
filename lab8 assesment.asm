include 'emu8086.inc'
.model small
.stack 100h
.data

var1 db 0
var2 db 0 
   
   
.code 

proc Multiply  
     
    mul bl  
    ret 
endp Multiply

proc Divide
    
    div bl
    ret
  ; result -> quotient= al, remainder= ah  
    endp Divide



main proc
    mov ax,@data
    mov ds,ax

mov ax,0
call scan_num
mov ax, cx
call scan_num
mov bx,cx

mov var1, al
mov var2, bl

call Multiply
mov dx,ax
mov ax,0
mov al, var1
mov bl,var2
;mov al,var1
;mov bl,var2
call Divide
mov dl,al
mov dh,ah
mov ax,0
mov ax,dx
call print_num
mov ax,0
mov al,dl
call print_num
mov ax,0
mov al,dh
call print_num
;call Divide



define_print_num
define_print_num_uns
define_scan_num    
endp main
end main 
                   