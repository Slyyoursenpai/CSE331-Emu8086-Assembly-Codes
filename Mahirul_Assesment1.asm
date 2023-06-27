
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
 ;; Mahirul Alam Chowdhury, ID: 2013445042

 
 
 
 
;Block1:

;mov ax,081h
;mov ah,0ech
;add al,ah
; Flag: CF:1, AF:0, PF:0, ZF:0, SF:0, OF:1
; CF is 1 because there was a carry value in the addition done.
; OF is 1 because the result of the addition is out of range of 8bits

;Block2:

;mov ax,07e6h
;mov bx,07e7h
;sub ax,bx
; Flag: CF:1, AF:1, PF:1, ZF:0, SF:1, OF:0 
; CF is 1 because the subcraction required a carry 
; SF is 1 because the most significant bit in the subtraction resulted in a negative number
; AF is 1 because the result has a carry till within the 4th bit
; PF is 1 because number of 1s in the result is even within 8 least significant bits

 
;;Block3:
;
;mov ax,092h
;mov bx,048h
;add ax,bx
;All Flags are 0

;;Block4:
;
;mov ah,0d3h
;mov al,051h
;add ah,al
; Flag: CF:1, PF:1
; CF is 1 because there was a carry in the addition result
; PF is 1 because there was an even number of 1s in the result.

;;Block5:
;
;mov ax,04a06h
;mov bx,02a0eh
;add ax, bx
 
;; storing operation

; mov bx,8000h          
; mov ds,bx
; mov ds:[0007h], ax
; Flag: AF:1, PF:1
; AF is 1 because the result has a carry within the 4th bit.
; PF is 1 because there are an even number of 1s within 8 least significant bits.
ret
;
;


             