include 'emu8086.inc'
.model small
.stack 100h
.data

   
.code 

;;; input stored in ax if interrupt used


main proc
    mov ax,@data
    mov ds,ax
    mov cx,26
  
 ;  mov ah,02h
;   mov dx,65
;   int 21h
    mov bx,65
   display_alphabet:
   printn ' '
   mov ah,02h
   mov dx,bx
   int 21h
   inc bx
   loop display_alphabet

define_print_num
define_print_num_uns
define_scan_num    
endp main
end main 
                   