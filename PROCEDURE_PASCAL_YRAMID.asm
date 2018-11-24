.MODEL SMALL
.STACK 100H
.DATA



.CODE

;-------------------Procedure




MAIN PROC
    
    
    MOV BH,1
    MOV DH,4
    
    MOV CH,5
    
    PRINT:
    
    CALL PRINT_LINE
    CALL STAR_PRINT
    CALL NEWLINE
    INC BH
    CMP BH,5
    JE EXIT
    DEC DH
    CMP DH,0
    JE EXIT
    
    
    DEC CH
    CMP CH,0
    JNE PRINT 
        
    
    
    EXIT:
    
    MOV AH,4CH
    INT 21H
    MAIN ENDP


STAR_PRINT PROC
    
    MOV BL,0
    MOV BL,BH
    PRINT_S:
    
  
     
    MOV DL,'*'
    MOV AH,2
    INT 21H
    
    DEC BL
    CMP BL,0
    JNE PRINT_S
  
    
    RET
    STAR_PRINT ENDP 



PRINT_LINE PROC 
    
    MOV CL,0
    MOV CL,DH
   
    PRINT_B:
   
    MOV DL,' '
    MOV AH,2
    INT 21H
    DEC CL
    CMP CL,0
    JNE PRINT_B
    
    RET
    PRINT_LINE ENDP  




NEWLINE PROC
     
    MOV AH,2
    MOV DL,0AH
    INT 21H
    MOV DL,0DH
    INT 21H
    RET
    NEWLINE ENDP



;----------------------------
END MAIN  
 
