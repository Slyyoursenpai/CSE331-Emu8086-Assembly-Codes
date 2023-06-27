  .model small
    .stack 100h
    .data  
    .code
  main proc
    mov bx,@data
    mov ds,bx
    ;;;;;;;;;;;;STACK  
  ; mov ax,0
;   mov ax,0ab43h
;   push ax
;   mov ax,0
;   mov al,0c6h
;   push ax
;   pop bx   
     
   ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; Bit-Shifting
   
   mov dx,5
   shl dx,5 ;;;shift left
   shr dx,1 ;;; shift right   
   
      
    endp main
    end main          