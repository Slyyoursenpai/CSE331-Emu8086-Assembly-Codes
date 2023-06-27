.model small
.stack 100h
.data
.code


;main2 proc
;
;mov ax,05h
;endp main2      ;; main function temp
;
;CSE331 proc
;
;end CSE331
;----------------------------------
;
;CSE331 proc     
;
;endp CSE331
;
;main2 proc
;    
;endp main2
;
;end main2
;;;;;;;;;;;;;;;;;;----------------
;v1 db 08h
;v1 db 53h
;v2 dw 0Feh      ;; declaring variable
;v3 db ?

;arr1 db 1,2,3,4,5
;arr2 -> 5,4,3,2,1   ;; declaring arrays
;;arr3 db 10 dup(?)
;; i_str db 'abcdef' ;; declaring string   
 ;; i_str db 10 dup('abcd')

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; v1 db 0ffh --1
; v2 dw 0FEH 3
; 
; v3 db? 4
;                              
; arr db 10 dup('abcd') 44     ;;; address space location ;;;;;
; 
;len equ $-arr
;
;i_str db 'abcd' 50

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;main proc
;;mov bx, @data
; mov ds, bx

;;mov al,v1 ;; match register size except using imm
;;endp main
;;end main   

;;;;;;;;;;;;;;;;;;;;;;;;;----------------------------
; mov al v1
; inc al   ;;; increment/decrement
; dec al
;
;;;;;;;;;;;;===***************************************************

;*p --> var
;;*p      ;;;;;;;;; prints value in address stored
; p   ;;;;;;;;;;; prints pointer address of the value

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;-----------------------------------   

;lea si,[0710h] ;; using pointers
;lea si, v1     

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;arr db 25,14,13,18,19 ;;;;;;;;;accessing arrays
;;lea si, arr
;;mov al,arr[si]