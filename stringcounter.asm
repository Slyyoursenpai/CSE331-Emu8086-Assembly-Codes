  .model small
    .stack 100h
    .data
   string db 'abcdefgh'
   len equ $-string
    
    
    
    .code
    
    Counter macro s1 
        lea si, s1
    mov cx, len 
    mov ax,0
    
    string_count:
    inc al
    loop string_count
    
    endm Counter
    
    main proc
        mov ax, @data
        mov ds, ax
                      
       Counter string              
  
      
      
      
      
    endp main
    end main