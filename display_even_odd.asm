include 'emu8086.inc'
.model small
.stack 100h
.data
var db ?

   
.code 




main proc
    mov ax,@data
    mov ds,ax
    
  call scan_num
  cmp cx,1
  jz odd
  cmp cx,2
  jz even
  cmp cx,4
  jz even
  cmp cx,3
  jz odd
  cmp cx,5
  jz odd
  jmp done
  
  even:
  printn ' '
  printn 'E'
  jmp done
  
  odd:
  printn 'O'
  
  jmp done
  
  done:
  ;; end
  
  
  
 


define_print_num
define_print_num_uns
define_scan_num    
endp main
end main 
                   