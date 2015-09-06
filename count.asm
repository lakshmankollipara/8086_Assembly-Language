assume cs:code,ds:data
data segment
num db 07h
n1 db ?
n2 db ?
data ends
code segment
start: mov ax,data
          mov ds,ax
          mov ah,00h
          mov bx,00h
          mov dx,00h  
          mov cx,8 
          mov al,num
label1:   ror al,01
              jc label2
              inc bl
              loop label1   
              jmp exit       
label2: 
             inc dl
             loop label1
exit:      mov n1,bl
             mov n2,dl
             mov ah,4ch
             int 21h
code ends 
end start
     