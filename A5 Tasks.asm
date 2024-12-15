.MODEL SMALL
 
.STACK 100H

.DATA
a db 1,2,3,4,5
b db 5 dup(?)

C DB 9
D DB 5

.CODE
MAIN PROC

;iniitialize DS

MOV AX,@DATA
MOV DS,AX
 
; enter your code here

MOV AH,0
MOV AL,C

MOV BL,30H

MUL BL

MOV CL,D

DIV CL

MOV CL,AL

ADD CL,32H

;MOV AH,1
;INT 21H
;SUB AL,30H
;MOV BL,AL
;;SUB BL,11H
;
;MOV AH,1
;INT 21H
;SUB AL,30H
;;MOV CL,AL
;
;MUL BL 
;
;MOV AH,2
;MOV DL,AL
;INT 21H


;exit to DOS

MOV AX,4C00H
INT 21H

MAIN ENDP
    END MAIN

;C TO F #####################
MOV AH,0
MOV AL,C

MOV BL,30H

MUL BL

MOV CL,D

DIV CL

MOV CL,AL

ADD CL,32H


;Write a case to print the name of the day of the week. Consider the first day of the week
;is Saturday.
;Sample execution:
;User Input: 3
;Output: Monday

.MODEL SMALL
 
.STACK 100H

.DATA
a db 1,2,3,4,5
b db 5 dup(?)

X DB ?
Y DB ?
Z DB ?

C DB "SATURDAY$"
D DB "SUNDAY$"
E DB "MONDAY$"
F DB "TUESDAY$"

.CODE
MAIN PROC

;iniitialize DS

MOV AX,@DATA
MOV DS,AX
 
; enter your code here

MOV AH,1
INT 21H

SUB AL,30H
MOV X,AL

CMP X,1
JE S1

CMP X,2
JE S2

CMP X,3
JE S3

CMP X,4
JE S4 

JMP EXIT
S1:
LEA DX, C
MOV AH,9
INT 21H
JMP EXIT

S2:
LEA DX, D
MOV AH,9
INT 21H
JMP EXIT

S3:
LEA DX, E
MOV AH,9
INT 21H
JMP EXIT

S4:
LEA DX, F
MOV AH,9
INT 21H


;exit to DOS

EXIT:

MOV AX,4C00H
INT 21H

MAIN ENDP
    END MAIN

;New code
;MAX BETWEEN 3 NUMBERS ###################
.MODEL SMALL
 
.STACK 100H

.DATA
a db 1,2,3,4,5
b db 5 dup(?)

X DB ?
Y DB ?
Z DB ?
MI DB ?
MA DB ?

.CODE
MAIN PROC

;iniitialize DS

MOV AX,@DATA
MOV DS,AX
 
; enter your code here

MOV AH,1
INT 21H
SUB AL,30H
MOV X,AL

MOV AH,1
INT 21H
SUB AL,30H
MOV BL,AL

MOV AH,1
INT 21H
SUB AL,30H
MOV CL,AL

CMP X,BL
JGE X1
JLE Y1

X1:
CMP X,CL
JGE PX
JLE PZ

Y1:
CMP BL,CL
JGE PY
JLE PZ


PY:
MOV MA,BL
JMP EXIT


PX:
MOV AL,X
MOV MA,AL
JMP EXIT

PZ:
MOV MA,CL

;exit to DOS

EXIT:

MOV AH,2
MOV DL,MA
ADD DL,30H
INT 21H

MOV AX,4C00H
INT 21H

MAIN ENDP
    END MAIN