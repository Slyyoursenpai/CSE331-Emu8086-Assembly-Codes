
;USING LOOP

.model small
.stack 100h

.data
array db 31, 63, 92, 11
len equ $-arr
number db 70


.code
main proc
mov ax, @data
mov ds, ax

lea si, array

mov dx, 0
mov cx, len

traverse:
mov dl, [si]
cmp dl, number
jz check
inc si
loop traverse
jmp end

check:
mov bx, 0235h

end:

          
endp main
end main
          