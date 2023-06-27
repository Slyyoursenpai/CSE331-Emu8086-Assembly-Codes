.model small
.stack 100h

.data
arr db 1,8,2,1,5,1,2,0,4,2
len equ $-arr
count db 0

.code
main proc
mov ax, @data
mov ds, ax

mov bx, 08000h
mov es, bx
mov di, 0200h

lea si, arr
mov ax, 0
mov cx,len

traverse:
mov al, [si]
mov es:[di], al  
cmp al,2 
jz c

a:

inc si
inc di

loop traverse
jmp end

c:
inc count
jmp a

end:

          
endp main
end main
          
        