.MODEL SMALL
.STACK 100H
.DATA



NUM DB ?   

MSG1 DB "Hello world. $"

.CODE

MAIN PROC 
    

    
    ;LINKUP DS AND CS
    MOV AX,@DATA
    MOV DS,AX    
    
    
    ;LOAD EFFECTIVE ADRESS, LOAD ADRESS OF THE STRING INTO SI
    LEA SI, MSG1
    MOV AH,9H  ;STRING OUTPUT
    INT 21H
    
    ;TAKE INPUT,CONVERT TO ACUTUAL VALUE,MOVE TO NUM VARIABLE
    MOV AH,1
    INT 21H
    SUB AL,30H
    MOV NUM,AL
    
    ;TAKE INPUT AGAIN AND CONVERT TO ACTUAL VALUE
    INT 21H
    SUB AL,30H
    
    ;ADDITION AND STORING RESULT IN BL
    ADD AL,NUM
    MOV BL,AL 
    
    ;NEWLINE & BACKSPACE
    MOV AH,2
    MOV DL, 0AH
    INT 21H 
    MOV DL, 0DH
    INT 21H
    
    ;OUT FINAL
    MOV DL,BL 
    ADD DL,30H
    INT 21H
    
    
    ;OUTPUT
    MOV AH,2
    INT 21H
    
    
    MOV AH,4CH
    INT 21H
    MAIN ENDP

END MAIN