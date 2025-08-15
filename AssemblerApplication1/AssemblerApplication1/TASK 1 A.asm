;
; AssemblerApplication1.asm
;
; Created: 16/11/2022 8:46:50 AM
; Author : Amin
;


; Replace with your application code
start:
    LDI R16, 0xFF
	LDI R17, 0x00
	OUT DDRB, R16
	OUT DDRC, R17
	IN R18, PINC
	OUT PORTB,R18
    rjmp start
