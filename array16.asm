;To move array of words from source to destination
;K.Lakshman Madhav/27th jan
assume cs:mycode,ds:mydata
mydata segment
src dw 1000h,2000h,3000h,4000h,5000h
dest dw 5 dup(?)
mydata ends
mycode segment
start:mov ax,mydata
         mov ds,ax
         mov cx,05d
         mov si,offset src
         mov di,offset dest
again:mov ax,byte ptr[si]
         mov byte ptr[di],ax
         inc si
         inc si
         inc di
         inc di
         loop again
         mov ah,4ch
         int 21h
mycode ends
end start