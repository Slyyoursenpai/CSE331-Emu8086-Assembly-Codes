    .model small
    .stack 100h
    .data
    arr1 db 1,6,4,6,1
    length equ $-arr1
    arr2 db 5 dup(?)
    
    name db 'Mahi'
    
    .code
    main proc
        mov ax, @data
        mov ds, ax
    
       lea si, arr1 + 4 ; point to the last element of arr1
    lea di, arr2
    mov cx, length ; set the loop counter to 5, the number of elements in arr1
    
    copy_loop:
        mov al, [si] ; load the current element of arr1 into AL
        mov [di], al ; store the current element of arr1 into the current element of arr2
       
        dec si ; decrement the source index to point to the previous element of arr1
        inc di ; increment the destination index to point to the next element of arr2
        loop copy_loop ; decrement the loop counter and jump to copy_loop if it's not zero
        
  
  ;;;;;;;;;;;;;;;;;;;;;;For checking Palindrome 
    
        
    lea si, arr2 ; point to the first element of arr2
    lea di, arr2 + 4 ; point to the last element of arr2
    mov bx, length ; set bx to the number of elements in the array

    palindrome_loop:
       ; cmp si, di ; compare the source and destination pointers
        ;jae end_palindrome_loop ; exit loop if they've crossed over
        mov al, [si] ; load the current element of arr2 into AL
        mov bl, [di] ; load the current element of arr2 into BL
        cmp al, bl ; compare the two elements
        jne not_palindrome ; jump to not_palindrome if they're not equal
        inc si ; increment the source pointer
        dec di ; decrement the destination pointer
        loop palindrome_loop ; decrement the loop counter and jump to palindrome_loop if it's not zero
    palindrome:
        mov ah, 9 ; print a message that the array is a palindrome
        jmp end_program

    not_palindrome:
        mov ah, 4 ; print a message that the array is not a palindrome
       
        jmp end_program

   ; end_palindrome_loop:
;        mov ah, 9 ; print a message that the array is a palindrome
;        lea dx, palindrome_message
;        int 21h
;        jmp end_program

    end_program:



;The added code uses two pointers, si and di, to point to the first and last elements of the arr2 array, respectively. It then uses a loop to compare the first and last elements of the array and moves towards the middle of the array. If the elements are equal, it continues to the next pair of elements. If the elements are not equal, it jumps to a section of code that prints a message saying that the array is not a palindrome. If the loop completes without finding any unequal elements, it jumps






    
    
    endp main
    end main
   
   
   