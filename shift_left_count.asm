include 'emu8086.inc'

.model small
.stack 100h 
.data    
arr1 dw 1331h   


.code

main proc
    
mov dx, @data
mov ds, dx

mov ax,arr1

shl bx,1
jc counter


    
endp main
end main

