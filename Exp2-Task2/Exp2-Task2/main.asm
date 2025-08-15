;
; Exp2-Task2.asm
;
; Displaying digit 4 on 7 segment display with HD74LS48P decoder
;
;
; Created: 14/11/2022 4:11:26 PM
; Author : Group 2
;

; Replace with your application code
start:
	RCALL UIAM

UIAM:
	LDI R16, 0xFF
	OUT DDRD, R16
	LDI R18, 0X20
	OUT PORTD, R18 ; Pin 5 HIGH
	RJMP UIAM
