.model small
.stack 100h
.data
   A db 'ghu'
   len equ $-A
   B db 'qwerty'
   len2 equ $-B
   bigger db 0
     
     .code 
  
  Counter macro s1,s2
    mov cx,s1
    lea si,A
    string_count:
    inc al
    loop string_count
     mov cx,0
     
    mov cx,s2
    lea di, B 
    string_count2:
    inc bl
    loop string_count2
    endm Counter
   
    main proc
        mov ax, @data
        mov ds, ax
 
        mov ax,0
        mov dx,0
       Counter len,len2                          
       String_Compare:
       cmp al,bl
       JGE store_string1
       mov bigger, 'B'
       jmp program_end
  
       store_string1:
       mov bigger, 'A' 
       
       program_end:
       ;end
      
      
    endp main
    end main