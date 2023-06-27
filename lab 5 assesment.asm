; .model small
;.stack 100h
;.data 
;arr db 22,11,15,31 ; array 
;search_value db 15 ; number to search
;search_value2 db 12 ; number to search
;len equ $-arr
;
;.code
;
;main proc
;mov bx, @data
;mov ds, bx
;
;lea si, arr 
;
;mov cx, len
;
;search: 
;
;mov al, search_value2
;mov dl, [si]
;cmp al,dl
;jne not_located
;mov bx,0235h
;jmp located
;
;not_located:  
;inc si
;loop search
;
;located:
;  ;;end
;
;endp main
;end main  

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

lea si, arr 

mov cx, len
mov bx, 0
search: 

mov al, search_value ; load the search value into AL
mov dl, [si]
cmp al, dl
je located  ;; jumps to located tag if equal 
inc si     ;;goes to next index of array if not equal and loops
loop search 

jmp not_found


not_found:
jmp exit_program

located:
mov bx, 0235h

exit_program:
;;ends
 
 
 
;lea si, arr 
;mov al, search_value2
;mov cx, len
;
;search:
;    cmp al, [si]       ; compare AL with the value in the array
;    jne not_found      ; jump to not_found if they are not equal
;    mov bx, 0235h ; continue with the code if they are equal
;    
;    jmp end_search     ; jump to end_search to skip over the not_found tag
;not_found:
;    inc si
;    loop search
;    
;end_search:
  
;;;;;-------------------------------------

;lea si, id
;mov bx, 8000h
;mov es,bx
;mov dx, 0000h
;mov ax,0
;mov cx, id_len
;count:
;mov es:[dx],[si] 
;inc dx
;inc si
;mov ax
;loop count



endp main
end main



