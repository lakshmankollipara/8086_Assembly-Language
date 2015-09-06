;To check the parity of the given number
;K.Lakshman Madhav/20th jan
assume cs:mycode,ds:mydata
mydata segment
num dw 1111000111111000b
msg1  db "parity is even$"
msg2  db "parity is odd$"
mydata ends
mycode segment
start:mov ax,mydata
         mov ds,ax
         mov ax,num
         or ax,0
         jp lable
         mov dx,offset msg2
         mov ah,09h
         int 21h
         jmp last
lable:mov dx,offset msg1
          mov ah,09h
          int 21h
          jmp last
last: mov ah,4ch
         int 21h
mycode ends
end start