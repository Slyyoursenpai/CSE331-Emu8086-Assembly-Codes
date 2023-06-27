;include 'emu8086.inc'

.model small
.stack 100h 
.data    
var1 db 0
fib_arr 10 dup(?)
len equ $-fib_arr
arr2 10 dup(?)

.code

main proc
    
    mov dx, @data
    mov ds, dx

;0, 1, 1, 2, 3, 5, 8, 13, 21, 34

mov al, 0
mov ah, 1
mov cx,len
lea di, fib_arr
lea si, arr2

fibonacci:
mov [di],al
add al, ah 
mov bl, al
mov al, ah
mov ah, bl
inc di
loop fibonacci


mov di,1

;mov cx,10
;array2mov:
;mov al,[di]
;mov [si],al
;inc di
;inc si
;loop array2mov:

;; writing in memory
mov bx,8000h
mov si,0001h
mov es,bx
mov cx,10
memory_write:
mov al,[di]
mov es:[si],ax
inc di
inc si
loop memory_write

endp main
end main

