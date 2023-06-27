include 'emu8086.inc'
.model small
.stack 100h
.data

string db '' 
len equ $-string

.code

main proc
mov bx, @data
mov ds, bx


mov dx,6
call get_string ;;stores in empty variable

mov ax,0
mov bx,0
printn ''
mov ah,01h  ;; input vector for character, stores in al
int 21h
mov bl,al   ;; search character stored in bl
 

lea di, string  ;;pointer set for string array
mov cx,5
mov ax,0
mov dl,0
find: 
mov al,[di]
cmp al,bl   ;;searches for value
jz found
inc di    ;; increments array index
inc dl    ;; increments array index (can be skipped) 
loop find
jmp not_found

found:
mov ax,0
mov al,dl ;; index moved to al for print_num call
printn ""
print "found at index: "
call print_num ;; prints value from ax
jmp complete:

not_found:
printn ""
print "not found"
;end

complete:
;end

define_print_num
define_print_num_uns
define_print_string
define_get_string
endp main
end main



