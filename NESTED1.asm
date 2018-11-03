.MODEL SMALL
.STACK 100H
.DATA


                                                                                     
NUM DB ?   



.CODE
         
         
MAIN PROC
    
   
        
    M
    MOV CX,5 
    
   L1:
   
    MOV BX,5
    SUB BX,CX
    INC BX
     
    
    
    PRINT:
    
    
    MOV AH,2
    MOV DL,'*'                               
    INT 21H
                             

  
    DEC BX
    
    
    CMP BX,0
    
    JNE PRINT 
    
    
    
    
    
    MOV DL,0AH
    INT 21H
    MOV DL,0DH
    INT 21H
    
    
    
    LOOP L1
    
    
      
    EXT:
    
    MOV AH,4CH
    INT 21H
    MAIN ENDP

END MAIN