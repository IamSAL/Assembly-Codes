.MODEL SMALL
.STACK 100H
.DATA



.CODE

;-------------------Procedure



 CHANGE PROC
    
    ;NEWLINE 
    MOV bl,'G'
    RET

    CHANGE ENDP  


MAIN PROC
    
    MOV AH,1
    INT 21H
    SUB AL,30H
    MOV BL,AL
    
    CALL NEWLINE
    
    INT 21H
    SUB AL,30H
    MOV CL,AL
    CALL NEWLINE
    CALL AD
    
    MOV DL,'*'
    INT 21H
    
    MOV AH,4CH
    INT 21H
    MAIN ENDP

AD PROC
    ADD CL,BL
    MOV AH,2
    MOV DL,CL
    ADD DL,30H
    INT 21H
    CALL NEWLINE
    
    RET
    AD ENDP

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
 
