.model small
.stack 100h

.data
arr db 1,2,3,4,5,6
len equ $-arr
sumeven db 0
sumOdd db 0

.code
main proc
mov ax, @data
mov ds, ax

lea si, arr
mov cx,len
mov bx, 2

traverse:

mov ax, 0 
mov dl, [si]   
mov al, dl
inc si
div bl
cmp ah,0
je even
add sumOdd,dl

back:
loop traverse

jmp end


even:
add sumEven,dl
jmp back 


end:
          
endp main
end main