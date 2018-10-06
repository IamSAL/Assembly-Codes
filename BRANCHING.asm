.MODEL SMALL
.STACK 100H
.DATA



NUM DB ?   

MSG1 DB "EQUAL $"   
MSG2 DB "NOT EQUAL $" 
MSG3 DB "...ITS GREATER $" 
MSG4 DB "...ITS LESSER $"


.CODE

MAIN PROC 
    

    
    ;LINKUP DS AND CS
    MOV AX,@DATA
    MOV DS,AX                                                        
    
    MOV AH,1
    INT 21H
    
    MOV BL,AL 
    
    MOV DL,10
    MOV AH,2
    INT 21H
    MOV DL,13
    INT 21H
    
    MOV AH,1
    INT 21H
    
    MOV CL,AL
    
    CMP CL,BL
    
    MOV DL,10
    MOV AH,2
    INT 21H
    MOV DL,13
    INT 21H
    
    
    JE EQUAL
  
 
    
   
        
    
    
    LEA DX,MSG2
    MOV AH,9
    INT 21H
         
    CMP CL,BL
    JG GREAT
    
    
    
    LEA DX,MSG4
    MOV AH,9
    INT 21H     
    CMP CL,BL
    JMP EXT
     
    GREAT:
    
    LEA DX,MSG3
    MOV AH,9
    INT 21H     
    CMP CL,BL
    JMP EXT
   
    EQUAL:
    LEA DX,MSG1
    MOV AH,9
    INT 21H
     
      
    EXT:
    
    MOV AH,4CH
    INT 21H
    MAIN ENDP

END MAIN