  .model small
    .stack 100h
    .data
   string db 'avadakedavraaaa'
    len equ $-string
  
    .code
    
    Count_A macro s1,s2
    
    lea si,s1
    counter:
    mov al, [si]
    inc si
    cmp al, s2
    jz found:   
    loop counter
    jmp done
    found: 
    inc bl
    jmp counter
    
    done:
    endm Count_A
    
    main proc
        mov ax, @data
        mov ds, ax
                      
    mov ax,0
    mov bx,0
    mov cx,len
    
    Count_A string, 'a'  
    
   ;number of A stored in bl   
      
      
      
    endp main
    end main