include 'emu8086.inc'

.model small
.stack 100h 
.data    
string dw 3211h

.code

main proc
    
    mov dx, @data
    mov ds, dx

 mov ax,string
 mov cx,0
 
 shift_left: ;;; shifts lefts and checks for 1
 shl ax,1
 jnc not_one
 inc cx   ;; increases counter if one is found (carry is found)
 
 
 not_one:  ;;; checks if all 1s are shifted 
 cmp ax,0
 jnz shift_left:
 
 mov ax,cx
 print 'The number of 1s are: '
 call print_num
 

 
;;; ans stored in cx


define_print_num
define_print_num_uns
endp main
end main



