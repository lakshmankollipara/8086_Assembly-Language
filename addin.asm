;To add two 8bit numbers using indirect addresing
;K.Lakshman Madhav/20th jan
assume cs:mycode,ds:mydata
mydata segment
mydata ends
mycode segment
start:mov ax,mydata
         mov ds,ax
         mov si,0010h
         mov di,0020h
         mov bx,0030h
         mov byte ptr[si],14h
         mov byte ptr[di],20h
         mov al,[si]
         add al,[di]
         mov byte ptr[bx],al
         mov ah,4ch
         int 21h
mycode ends
end start