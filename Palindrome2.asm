  .model small
    .stack 100h
    .data
   arr db 1,6,4,6,1
   len equ $-arr
   arr2 db '181'  
   len2 equ $-arr2
   arr3 db 'abba'
   len3 equ $-arr3 
    
    
    .code
    main proc
        mov ax, @data
        mov ds, ax
                      
                      
    lea si, arr3   point to last index
    lea di, arr3+3 ; point to last index
    mov cx, len3  ; counter set to length (3)
    
    palindrome_check:
    mov al,[si] ; element of array loaded to al from index 0
    mov bl,[di] ; element of array loaded to al from index 2
    cmp al,bl
    jnz not_palindrome
    inc si
    dec di
    loop palindrome_check
    
    palindrome:
    mov ah,9
    jmp end_program 

   not_palindrome:
   mov ah, 3
   jmp end_program
  
    
    end_program:
    ;end
      
      
      
      
      endp main
    end main