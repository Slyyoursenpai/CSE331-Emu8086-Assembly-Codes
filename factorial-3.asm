include 'emu8086.inc'
.model small
.stack 100h
.data
var dw 7
var2 dw 8

   
.code 




main proc
    mov ax,@data
    mov ds,ax
    
    mov bx,var
    mov ax,var
    mov cx,7
    factor:
    dec bx
    cmp bx,0
    jz done:
    mul bx
    loop factor
    
    done:
    ;;;;end
    call print_num
     
     mov ax,0
     mov bx,0
     mov cx,0
     
     mov bx,var2
    mov ax,var2
    mov cx,8
    factor2:
    dec bx
    cmp bx,0
    jz done2:
    mul bx
    loop factor2
    
    
    
    
    done2:
    ;;;;end
    printn ' '
     call print_num_uns


define_print_num
define_print_num_uns
define_scan_num    
endp main
end main 
                   