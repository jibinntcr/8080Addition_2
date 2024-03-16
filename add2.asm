DATA SEGMENT
    HEX1 DW 0A0Ah ; First hexadecimal number (10 in decimal)
    HEX2 DW 0FFh  ; Second hexadecimal number (255 in decimal)
    RESULT DW ?   ; Variable to store the result
DATA ENDS

CODE SEGMENT
    ASSUME CS:CODE, DS:DATA

START:
    MOV   AX, DATA  ; Load the data segment address into AX
    MOV   DS, AX    ; Set DS to point to the data segment

    MOV   AX, HEX1  ; Load the first hexadecimal number into AX
    ADD   AX, HEX2  ; Add the second hexadecimal number to AX
    MOV   RESULT, AX ; Store the result in the designated memory location

    ; Add any additional instructions or procedures here

    MOV   AH, 4Ch   ; Exit program
    INT   21h       ; DOS Interrupt

CODE ENDS
END START
