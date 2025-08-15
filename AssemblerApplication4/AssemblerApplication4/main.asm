;
; AssemblerApplication4.asm
;
; Created: 16/11/2022 10:38:29 AM
; Author : Amin

start:
    ldi r16, 0xf		;load 0b1111 to r16
	out ddrb, r16		;let B0 - B3 as output
	out portb, r16		;output 0b1111 to portB
	rjmp nothing		;jump to nothing

nothing:
	rjmp nothing		;jump to nothing (loop)



