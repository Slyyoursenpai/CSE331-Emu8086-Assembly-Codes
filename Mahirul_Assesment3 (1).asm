.model small
.stack 100h
.data
arr1 db 1,2,3,4,5
arr2 db 5 dup(?)
name db 'Mahi'
;var db 25,2,3,45 ;; byte size array
;v dw 212, 42,15,47 ;; word size array

;; len1 equ$-1

.code
main proc
    mov ax, @data
    mov ds, ax
    
   ; lea si var    ; i=0
   ;; mov ax, si
  ;  mov al,[si] ; a[i]
  ;  inc si ;i++ ;;; incrementing pointer address by 1
  ;  mov ah,[si] ;;; accessing pointer / a[i] 
    
    ;[si] ----> 0000=25
    ; si=0000
    
; pi equ 3;; declaring constant
;-----------------------------------------------

  ; lea si, v
;   mov ax, [si] ;; using word size register
;   add si,2 ;; increments both lower part and higher part of word size
;   mov bx,[si]
;   add si,2 ;; points to third location of array index
;   sub si, 4;; points to 2nd index
;   mov [si], 31 ;; stores 31 in index location 
    
    
  ;  mov al, pi ;; value of pi in al register
;-==--------------------------------------------------

;len1 equ $-v ;; finding length of array.

;----------------Task3----------------------------------
;;question 1


arr1 db 1,2,3,4,5
arr2 db 5 dup(?)

lea si, arr1
lea di, arr2

mov ah, [si]
add di,4 ; 5 makes 10 spaces i.e array index ;add di,len2-1; len2 equ $-arr2 (data segment) ; di-->arr2[9]
;;mov bl, [di]
;;mov ah, [si]
mov [di], ah ;5
dec di
inc si

mov ah, [si]
mov [di], ah ;4
dec di
inc si

mov ah, [si] 
mov [di], ah ;3
dec di
inc si

mov ah, [si]
mov [di], ah ;2
dec di
inc si

mov ah, [si]
mov [di], ah ;1
dec di
inc si

             
;;question 2
mov bx, 8000h
mov es,bx
mov cx, 0000h

;;name db 'Mahirul'
lea si, name
mov es:[cx],[si]
inc si               ;M
inc cx 

mov es:[cx],[si]     ;A
inc si
inc cx 

mov es:[cx],[si]     ;H
inc si
inc cx

mov es:[cx],[si]
inc si               ;I
inc cx  



;;Mahirul 2013445042

endp main
end main