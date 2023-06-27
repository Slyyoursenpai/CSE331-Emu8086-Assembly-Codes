include 'emu8086.inc'

.model small
.stack 100h
.data    
str1 db 'abcd$'
str db 'tasnia', 0Ah , 0Dh, 0h
str2 db 'ishrat'
str3 db 10 dup(?)   


.code

main proc
    
    mov dx, @data
    mov ds, dx
    
    
    ;putc 'a' ; prints a caharacter in a console        
    ;printn 'abcd'        ; print string
    ;print 'efgc'  
    ;putc 0ah
    ;putc 'e'  
    ;printn ' '                          
    ;putc 'g'  
    
    
   ;call scan_num; number input   
   ;;define_scan_num ; number store in cx
   ;mov ax, cx
   ;call scan_num
   ;mov bx, cx         
   
   
   ;printn ' the sum is '  ; printn use for next line
   ;mov ax,15; number store in ax register
   ;call print_num
   ;;define_print_num
   ;define_print_num_uns   
   
   
   
   lea di, str
   call print_string
   lea di , str2
   call print_string  
   define_print_string
   printn str 
        
   
   
   
   ;lea di, str3  ; varaiable data 
   ;mov dx, 10
   ;call get_string; always ascii value     
   ;define_get_string  
   
   
   ;mov al,5        ; when interupt it creats subroutine
   ;mov ah, 01h 
   ;int 21h
   ;sub al, 030h
   
   ;mov ah, 02h
   ;mov dl ,5
   ;add dl, 30h
   ;int 21h 
   
   
   
   
   
   ;lea si, str3
   ;mov cx, 10
   ;l:
   ;mov ah, 01h 
   ;;int 21h  
   ;mov [si], al
   ;inc si
   ;loop  l  
   
   
   ;lea dx, str1
   ;mov ah, 09h
   ;int 21h
            
    
endp main
end main

