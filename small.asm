;To find the smallest element in the array
;K.Lakshman Madhav/8th feb
assume cs:mycode,ds:mydata
mydata segment
count equ 05h
src db 10h,20h,30h,40h,50h
dest db  ?
mydata ends
mycode segment
start:mov ax,mydata
         mov ds,ax
         mov cx,count
         mov si,offset src
         mov al,[si]
begin:inc si
           mov ah,[si]
           cmp al,ah
           jnc next
           jmp last
next:mov al,ah
         loop begin
last: mov dest,al
          mov ah,4ch
          int 21h
mycode ends
end start