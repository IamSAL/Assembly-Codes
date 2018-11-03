.MODEL SMALL
.STACK 100H
.DATA


                                                                                     
NUM DB ?   



.CODE
         
         
MAIN PROC
    
   
        
    MOV BH,5 
    
    MOV CX,5 
    
   L1:
   
    MOV BL,BH
     
    
    
    PRINT:
    
    
    MOV AH,2
    MOV DL,'*'                               
    INT 21H
                             

  
    DEC BL
    
    
    CMP BL,0
    
    JNE PRINT 
    
    
    
    DEC BH
    
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