.model small
.stack 100h
.data 
arr db 22,11,15,13,0,18,19
len equ $-arr
.code

main proc
mov bx, @data
mov ds, bx
;________________LOOPING with JUMP____________________

;lea si,arr
;mov bx, 08000h
;mov es,bx
;mo di,0001h
;
;a: ;;labelling
;mov al,[si]
;moves:[di],al
;inc si
;inc di
;cmo al,00h
;jnz a

;;labelling example with jump;
;mov al,10
;mov bl,10
;cmp al,bl ;subtracts, doesn't store
;jz b ;; jump if zero-flag=1 to b
;;jnz a
;a:
;inc al
;b:
;dec bl 
;--------------- Jump not 0----
;mov al,10
;mov bl,6
;cmp al,bl ;subtracts, doesn't store
;
;jnz a
;
;b:
;dec bl
;a:
;inc al
;jmp b ; jumps to b /unconditional jump
;;--------------------------------------------------
;mov al,10
;mov bl,6
;cmp al,bl ;subtracts, doesn't store
;
;jnz a
;
;b:
;inc al
;jmp break
;a:
;dec bl
;break: ;c:

;jmp b ; jumps to b /unconditional jump

;;;---------------LOOPS------------------------

;mov cx, 5 ;; cx used for number of iteration in loop
;a:
;mov al,5
;add al,10
;loop a ;cx decrements with each loop
;

;;--------summation of array elements
 ;
 ;mov cx,len
; ;arr db 22,11,15,13,0,18,19
; ;len equ $-arr 
; lea si,arr
; mov ax,0 
; 
; sum:
; mov dl,[si]
; add al,dl
; inc si
; loop sum

;--------------------------------------
lea si,arr    ;;copies array till 0 
mov bx,08000h
mov es,bx
mov di,0001h

a:
mov al,[si]
mov es:[di],al
inc si
inc di
cmp al,00h
jnz a


endp main
end main 