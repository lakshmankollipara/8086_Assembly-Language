;To add the elements in the array of 16 bit
;K.Lakshman Madhav/8th feb
assume cs:mycode,ds:mydata
mydata segment
count equ 05h
src dw 1000h,2000h,3000h,4000h,5000h
dest dw  ?
mydata ends
mycode segment
start:mov ax,mydata
         mov ds,ax
         mov cx,count
         xor ax,ax
         xor bx,bx
         mov si,offset src
again:mov al,[si]
           add bx,ax
           inc si
           inc si
           dec cx
           dec cx
           jnz again
          mov di,offset dest
          mov [di],bx
          mov ah,4ch
          int 21h
mycode ends
end start