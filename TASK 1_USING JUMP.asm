
;USING JUMP

.model small
.stack 100h

.data
array db 31, 63, 92, 11
len equ $-arr
number db 11


.code
main proc
mov ax, @data
mov ds, ax

lea si, array

mov dx, 0
mov cl, 0

traverse:
mov dl, [si]
cmp dl, number
jz check
inc si
inc cl
cmp cl,len
jz end
jmp traverse

check:
mov bx, 0235h

end:

          
endp main
end main
          
        
