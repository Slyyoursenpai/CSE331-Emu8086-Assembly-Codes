
.model small
.stack 100h
.data
arr1 db 3,2,1,2,0,6,6,1,6,3
arr2 db 3,1,0,2,0,2,3,1,1,2
arr_sum db 10 dup(?)  
even db 5 dup(?)
odd db 5 dup(?)
len equ $-odd
.code

main proc
mov bx, @data
mov ds, bx


lea di,arr1
lea si,arr2
lea bx,arr_sum  ; BX points to arr_sum
mov cx,10
add_array:
mov ax,[di]
mov dx,[si]
add ax,dx
mov [bx],ax
inc si          ;;adds indexes value and stores in 3rd array
inc di
inc bx
loop add_array

mov ax,0
mov bx,0
mov cx,0
mov dx,0
mov si,0
mov di,0
;
;
lea bx,arr_sum 
lea si,odd    
lea di,even   
;
mov cx,5
odd_even_check:
mov al, [bx]   ;;value from 3rd array to al register
test bx,01h ;;checks for even or odd
jnz odd_array
even_array:
mov [di],al ;; moves to even array
inc di
inc bx
loop odd_even_check
jmp done

odd_array:
mov [si],al
inc si      ;; moves to odd array
inc bx
jmp odd_even_check

done:
;end





endp main
end main



