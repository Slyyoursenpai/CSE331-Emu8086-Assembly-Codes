.model small
.stack 100h
.data

   byteM dw ?
   wordM dw ?
   wordMHigh dw ?
   
   byteQ dw ?
   wordQ dw ?
   byteR dw ?
   wordR dw ?
   
   
.code
main proc
    mov ax,@data
    mov ds,ax
    ;--------8-bit multiplication-------------------------------
    ; mov ax, 0 (may use to remove garbage value. use instead of using ax register for mul)
    ;; results stores in ax if 16-bit
  ;  mov ax, 052h ;8-bit multiplication -> al*8-bit register (always use al register for mul), (use ax to avoid garbage value)
   ;mov al, 02h
  ;  mov bl, 02h
  ;  mul bl
;----------------------------------------------------------------------
   ; 16bit multiplication
   ; ax*any 16bit register = result in lower 16 bit=ax, higher 16bit= dx 
  ; mov ax,02522h ; ax for 16 bit multiplication (checks for 8 bit in al then heads onto ax for 16 bit)
  ; mov bx,02h
  ; mov bx,03152h
   ;mul bx
   
 ;------------DIVISION--------------------------------------
  ;8-bit dvision = 16/8 bits
  ; 8-bit division-> ax/any 8bit register= result in ax
 ; mov bl,02h
 ; div bl    ; result -> quotient= al, remainder= ah
    
 ;------------------------------------------------
   ;16-bit Division -- dx:ax/any 16 bit register
                       ;h l
    
    ;example= 0252 3612/2123h = 11EEh, rem= 1488h
             ; dx   ax
    
   ; mov ax,3612h
   ; mov dx,0252h
   ; mov bx,2123h
  ;  div bx; result-> quotient= ax, remainder= dx
                       
  ;----------------Lab Task 4--------------------------
   
   ;--------------------8bit mult---------
   ;mov ax, 08h
;   mov bl, 02h
;   mul bl 
;   
;   mov byteM, ax
   
   
   ;----------------- 16 bit mult -----------------
   
   ;mov ax,  1234h
;   mov bx,  6789h
;   mul bx
;   
;   mov wordM, ax
;   mov wordMHigh, dx
   
                      
 ;----------------------------8bit division--------------------------------
 
    mov ax, 40h
    mov bl, 13h
    
    div bl
    
    mov byteQ, al
    mov byteR, ah
 
 ;;;;;;; 16bit division-------------------

     mov ax,1500h
    mov dx,0312h
    mov bx,1234h
    div bx; result-> quotient= ax, remainder= dx    
    
    mov word1Q, ax
    mov word1R, dx
    
endp main
end main 
                                  
                          
    




