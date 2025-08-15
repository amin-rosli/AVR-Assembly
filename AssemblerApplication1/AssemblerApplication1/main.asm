;
; AssemblerApplication1.asm
;
; Created: 16/11/2022 8:46:50 AM
; Author : Amin

start:
    LDI R16, 0xFF ;load '255' to register 16
	LDI R17, 0x00 ;load '0' to register 17
	OUT DDRB, R16 ;let all of portB as output
	OUT DDRC, R17 ;let all of portC as input
	IN R18, PINC  ;load value of pinC to r18
	OUT PORTB,R18 ;output value of r18 to portB
    rjmp start    ;jump to start (loop)


