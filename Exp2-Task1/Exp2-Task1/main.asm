;
; Exp2-Task1.asm
;
; Displaying digit 4 to 7-Segment Display without decoder (HD74LS48P)
;
; Created: 14/11/2022 4:01:47 PM
; Author : Group 2
;

; Replace with your application code
start:
	RCALL UIAM

UIAM:
	LDI R16, 0xFF 
	OUT DDRD, R16 ; Set Port D to OUTPUT
	OUT DDRB, R16 ; Set Port D to OUTPUT
	;LDI R18, 0X04
	;OUT PORTD, R18
	;LDI R18, 0X08
	;OUT PORTD, R18
	LDI R18, 0X10 ; Pin 4
	OUT PORTD, R18
	LDI R18, 0X20 ; Pin 5
	OUT PORTD, R18
	LDI R18, 0X40 ; Pin 6
	OUT PORTD, R18
	;LDI R18, 0X80
	;OUT PORTD, R18
	LDI R18, 0X01 ; Pin 8
	OUT PORTB, R18
	RJMP UIAM