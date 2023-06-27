include 'emu8086.inc'
.model small
.stack 100h
.data

array db 10(?)
len equ $-array
max db 0 
   
   
.code 

main proc
    mov ax,@data
    mov ds,ax
    
lea si, array
mov bx,10
mov ax,0   

inp:  
call scan_num
mov [si],cl
inc si
dec bx
cmp bx,0
jnz inp    

  call scan_num
     mov [si],cl
     inc si
     dec bl
     cmp bl,0     
     jnz loop1
    
 
    lea di,array 
    mov bx,0 
    mov bl,max
    mov cx,len          
                
     iterate:   
  
        mov al,[di]
        cmp al,bl
        jg  greater
        jle lesser
        greater:
            mov bl,[si]
            
        lesser:
        inc si
        
        loop iterate 
        
        mov ax, bx
        call print_num
 
 
 
 
define_print_num
define_print_num_uns
define_scan_num 
endp main
end main