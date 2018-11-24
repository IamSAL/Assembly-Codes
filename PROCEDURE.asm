.MODEL SMALL
.STACK 100H
.DATA


.CODE



MAIN PROC
    
    MOV AH,2
    MOV DL,'G'
    INT 21H
    CALL NEWLINE
    MOV DL,'H'
    INT 21H
    
    MOV AH,4CH
    INT 21H
    MAIN ENDP


;-------------------Procedure

NEWLINE PROC
    
    ;NEWLINE 
    MOV AH,2
    MOV DL,0AH
    INT 21H
    MOV DL,0DH
    INT 21H
    RET
    NEWLINE ENDP

;----------------------------
END MAIN  
 
