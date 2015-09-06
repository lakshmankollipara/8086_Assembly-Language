;To move array of bytes from source to destination
;K.Lakshman Madhav/27th jan

assume cs:mycode,ds:mydata
mydata segment
src db 10h,20h,30h,40h,50h
dest db 5 dup(?)
mydata ends

mycode segment
start:mov ax,mydata
         mov ds,ax
         mov cx,05d
         mov si,offset src
         mov di,offset dest
again:mov ah,byte ptr[si]
          mov byte ptr[di],ah
          inc si
          inc di
          dec cx
          jnz again
          mov ah,4ch
          int 21h
mycode ends
end start