
.model small
.stack 100h
.data
grades db 50,60,70,90,94
len equ $-grades
stud dw 5 dup(?)
len2 equ $-stud
sum db 0 
avg db 0


; A+: 80-100 
; A: 75-79
; A-: 70-74
; B+: 65-69
; B: 60- 64
; B-: 55-59
; C+: 50-54
; C: 45-49
; D: 40-44
; F: 0-40

main proc
mov ax, @data
mov ds, ax

lea si, grades
lea di, stud
mov ax, 0
mov bx,0
mov cx,len

 grade_check:

mov al, [si]

cmp al,80
jge A_plus

cmp al,75
jge A

cmp al,70
jge A_minus

cmp al,65
jge B_plus

cmp al,60
jge B

cmp al,55
jge B_minus

cmp al,50
jge C_plus

cmp al,45
jge C

cmp al,40
jge D

cmp al,40
jl F
;;loop grade_check
jmp done: 

A_plus:
mov bx, '+A'
mov [di],bx
inc di 
inc di
jmp buffer

A:
mov bx, 'A'
mov [di],bx
inc di
inc di
jmp buffer

A_minus:
mov bx, '-A'
mov [di],bx
inc di
inc di
jmp buffer

B_plus:
mov bx, '+B'
mov [di],bx
inc di
inc di
jmp buffer

B:
mov bx, 'B'
mov [di],bx
inc di
inc di
jmp buffer

B_minus:
mov bx, '-B'
mov [di],bx
inc di
inc di
jmp buffer

C_plus:
mov bx, '+C'
mov [di],bx
inc di
inc di
jmp buffer

C:
mov bx, 'C'
mov [di],bx
inc di
inc di
jmp buffer

D:
mov bx, 'D'
mov [di],bx
inc di
inc di
jmp buffer

F:
mov bx, 'F'
mov [di],bx
inc di
inc di
jmp buffer

 buffer:
mov ax,0
mov al, [si]
add sum,al
inc si
;inc si
loop grade_check


;avg_traverse:
;mov ax,0
;mov al,[si]
;add sum,al
;inc si
;loop avg_traverse

avg_calc:
mov bl,len 
mov ax,0
mov al, sum
div bl
mov avg,al




done:
;end


endp main
end main
