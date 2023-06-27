  
.model small
.stack 100h
.data 
arr db 1,2,3,4 ; array
len equ $-arr 
search_value db 0 ; number to search
search_value2 db 12 ; number to search

id db 2,0,1,3,4,4,5,0,4,2
id_len equ $-id
.code

main proc
mov bx, @data
mov ds, bx

;lea si, arr 
;
;mov cx, len
;mov bx, 0
;search: 
;
;mov al, search_value ; load the search value into AL
;mov dl, [si]
;cmp al, dl
;je located  ;; jumps to located tag if equal 
;inc si     ;;goes to next index of array if not equal and loops
;loop search 
;
;jmp not_found
;
;
;not_found:
;jmp exit_program
;
;located:
;mov bx, 0235h
;
;exit_program:
;;;ends
;;end_search:
  
;;;;;-------------------------------------

lea si, id
mov bx, 8000h
mov es,bx
mov di, 0000h
mov ax,0
mov cx, id_len
;mov bx, [si]
count:
mov bx, [si] ;; pointer data moved to register
mov es:[di],bx ;; dx used as offset to es. console says undeclared var [dx]
inc dx
inc si
inc ax
loop count



endp main
end main



