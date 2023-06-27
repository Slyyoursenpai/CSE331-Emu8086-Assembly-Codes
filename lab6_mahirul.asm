.model small
.stack 100h
.data
v1 db ?
v2 db ?
s db ?
var db 4
.code

;;;;;;;;;;;Macro Demo
 SUM macro a,b
 
 ADD AL,a
 add cx,b
 


 ;;;;;;; proc to multiply 8 bit
proc Multiply  
     
    mul bl  
    ret 
endp Multiply 

 ;;;; defining MACROS 

;sum macro
; add dl,al
;    sum endm
     
; SUM macro v
;    add dl, v 
;    SUM endm
 
 
main proc
mov bx, @data
mov ds, bx


mov AX,02H
MOV CX, 05H
SUM var,2
mov dx,0 
 
 ;;;;; calling Macros
 ;mov al,5h 
; mov dl,10h
;  sum
;mov v1,5h
;mov dl,10h
; SUM v1
 ;----------------------------------- 

 ;;-------- calling Procs
 
;mov al, 8
;mov dl, 15
;add al, dl -> in procedure
;call addNumbers ; jumps to memory address location of procedure and stores location of where procedure is called.
 
 
;mov ax, 12h 
; mov bl, 02h
; call Multiply            
;  mov bx,01h
;  mov ax,bx
;   call Multiply
;
endp main

;;;;;;;;;;;;;; sample procedure to add numbers;;;;;;
;addNumbers proc
;   ; mov al, 8
;   ; mov dl, 15
;    add al, dl
;     
;      
;endp addNumbers




 


end main