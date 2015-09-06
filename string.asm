;To move string from source to destination
;K.Lakshman Madhav/27th jan
assume cs:mycode,ds:mydata,es:mydata
mydata segment
src db "lakshman"
dest db 8 dup(?)
mydata ends
mycode segment
start:mov ax,mydata
         mov ds,ax
         mov es,ax
         mov cx,08d
         mov si,offset src
         mov di,offset dest
         cld
         rep movsb
         mov ah,4ch
         int 21h
mycode ends
end start