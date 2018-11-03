.MODEL SMALL
.STACK 100H
.DATA


                                                                                     
NUM DB ?   



.CODE

MAIN PROC 
    
    MOV BX,5
    
    L1:
        
    MOV CX,5
    SUB CX,BX
    INC CX                        
    
     
    L2:
                                                   
    MOV AH,2
    MOV DL,'*'                               
    INT 21H
                             
    LOOP L2 
    
    MOV DL,0AH
    INT 21H
    MOV DL,0DH
    INT 21H
    
    
    DEC BX
    CMP BX,0
    JE EXT
    JMP L1
    
    
    
      
    EXT:
    
    MOV AH,4CH
    INT 21H
    MAIN ENDP

END MAIN