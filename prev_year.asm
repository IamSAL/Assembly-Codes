
; clear msb and lsb of bx, leaving other bits unchanged 
mov bx, 1000101110001011b
shl bx,1
shr bx,1
shr bx,1
shl bx,1     




; complement lsb of dx, leaving other bits unchanged
mov dx, 1000101110001010b
rcr dx,1

jc label 
stc   
jmp exit
label:
clc

exit:
rcl dx,1       


; set the 0th and 5th bit of AX, leaving other bits unchanged
mov ax, 0000100010001000b
rcl ax,1
stc
rcl ax,5
stc
rcr ax,6

