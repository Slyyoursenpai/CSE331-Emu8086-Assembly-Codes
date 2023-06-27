include 'emu8086.inc'
.model small
.stack 100h
.data
arr db 8 dup(?)

   
.code 




main proc
    mov ax,@data
    mov ds,ax
    lea si,arr
    mov ax,8
    mov bx,0
 input:
 call scan_num ;; stored in cx
 mov [si],cx
 add bx,[si]
 inc si
 dec ax
 cmp ax,0
 jnz input
 
 shift_right:
 shr bx,3
 
 mov ax,bx
 call print_num
 


define_print_num
define_print_num_uns
define_scan_num    
endp main
end main 
                   