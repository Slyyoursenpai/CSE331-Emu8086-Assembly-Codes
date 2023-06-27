.model small 
.stack 100h 
.data
score db 90h,80h,87h,85h
len equ $-score



.code

main proc
mov ax,@data
mov ds,ax  



mov bx,08000h
mov es,bx
mov di,0200h

lea si, score


mov ax,0
mov bx,0
mov cx,0
mov cx,len 



score_loop:

cmp [si],90h
jge A
            
cmp [si],87h
jge B

cmp [si],84h
jge C

cmp [si],80h
jge D

A:
mov al,[si]
mov es:[di],al
inc di
mov es:[di],"A"  
inc si
inc di
jmp E

B:
;mov al,[si]
;mov es:[di],al
;inc di
mov es:[di],"B"  
inc si
inc di
jmp E

C:
;mov al,[si]
;mov es:[di],al
;inc di
mov es:[di],"C"  
inc si
inc di
jmp E

D:
;mov al,[si]
;mov es:[di],al
;inc di
mov es:[di],"D"  
inc si
inc di
jmp E

E: 

loop score_loop

endp main
end main