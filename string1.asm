;To concatinate 2 strings
;K.Lakshman Madhav/27th jan
assume cs:mycode,ds:mydata,es:mydata
mydata segment
src1 db "my name is "
src2 db "lakshman madhav"
dest dw 26 dup(?)
mydata ends
mycode segment
start:mov ax,mydata
         mov ds,ax
         mov es,ax
         mov cx,11d
         mov si,offset src1
         mov di,offset dest
         cld
         rep movsb
         mov cx,15d
         mov si,offset src2
         mov ax,offset dest
         cld
         rep movsb
         mov ah,4ch
         int 21h
mycode ends
end start