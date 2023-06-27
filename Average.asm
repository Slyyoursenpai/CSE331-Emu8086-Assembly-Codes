.model small
.stack 100h

.data
arr db 1,2,3,4
len equ $-arr
sum db 0
avg db 0


.code
main proc
mov ax, @data
mov ds, ax

lea si, arr
mov cx, len
mov bl, len

;
;mov ax, var
;mov bl, 5
;div bl 
;


traverse:
mov ax,0
mov al,[si]
add sum,al
inc si
loop traverse

avg_calc:
mov ax,0
mov al,sum
div bl
mov avg,al


            
endp main
end main