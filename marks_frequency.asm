include 'emu8086.inc'

.model small
.stack 100h 
.data    
arr db 1,2,2,3,5,3
arr_freq db 6 dup(?)
.code

main proc
    
    mov dx, @data
    mov ds, dx

  lea si, arr
  lea di, arr_freq
  
  mov cx,6
  mov ax,0
  mov bx,0
  mov dx,0
  
  iterate:
  mov al,[si]
  cmp bl,al
  jz increment
  inc bl
  loop iterate
  jmp complete
  
  increment:
  inc dl
  mov di,si
  mov [di],dl
  inc si
  ;inc di
  jmp iterate
  
  complete:
  ;end
    
  
  
  





endp main
end main



