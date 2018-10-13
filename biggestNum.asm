 .model small
 .stack 100h  
 
 .data
a db ?
b db ?
c db ?
 
num1m db "Enter first number: $" 
num2m db "Enter second number: $"
num3m db "Enter third number: $"
msg1 db "The biggest number: $"    
msg2 db "The smallest number: $" 
msg3 db "all equal or other error $"

   
 .code
 main proc
   
       mov ax, @data
       mov ds,ax
       
   
       lea dx,num1m
       mov ah,9
       int 21h
       
       mov ah,1
       int 21h
       sub al,30h
       
       mov a,al 
       
       
       mov ah,2
       mov dl,0ah
       int 21h
       mov dl,0dh
       int 21h 
       
       lea dx,num2m
       mov ah,9
       int 21h 
       
       mov ah,1
       int 21h
       sub al,30h
       
       mov b,al
       
       mov ah,2
       mov dl,0ah
       int 21h
       mov dl,0dh
       int 21h
       
       lea dx,num3m
       mov ah,9
       int 21h
        
       mov ah,1
       int 21h
       sub al,30h
       
       mov c,al  
       
 
 
       mov bl,a
       
       cmp bl,b
       
       jg bigA 
       
       
       bigA:
       
       cmp bl,c 
       
       mov bl,c
       
       cmp bl,a
       
       jg bigC
       
       
       bigC: 
       
       add bl,30h 
        
       mov ah,2
       mov dl,0ah
       int 21h
       mov dl,0dh
       int 21h
       
       mov ah,9
       lea dx,msg1
       int 21h  
       
       mov ah,2
       
       mov dl,bl
       
       int 21h
       
       JMP exit
       
       
       
       
       jg biggestA
       
       biggestA:
       
       add bl,30h 
        
       mov ah,2
       mov dl,0ah
       int 21h
       mov dl,0dh
       int 21h
       
       mov ah,9
       lea dx,msg1
       int 21h  
       
       mov ah,2
       
       mov dl,bl
       
       int 21h
       
       JMP exit
       
       
         
   
    exit:
    mov ah,4ch
    int 21h
    main endp
 end main
