;
; AssemblerApplication4.asm
;
; Created: 16/11/2022 10:38:29 AM
; Author : Amin

start:
    ldi r16, 0x4		;load '4' to r16
	out ddrb, r16		;let B0 - B3 as output
	out portb, r16		;output 0b0100 to portB
	;0b0100 is the binary representation of '4'
	rjmp nothing		;jump to nothing

nothing:
	rjmp nothing		;jump to nothing (loop)



