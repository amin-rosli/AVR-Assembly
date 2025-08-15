;
; AssemblerApplication10.asm
;
; Created: 6/1/2023 5:03:54 PM
; Author : Amin

start:
	ldi r16, 0xff
	ldi r18, 0x00
	ldi r19, 0x00
	out ddrd, r16
	out ddrb, r18

check:
    in r18, pinb
	cpi r18, 0b111
	breq reset
    rjmp check

reset:
	ldi r19, 0b11110000
	out portd, r19
	call delay
	ldi r25, 0	
	ldi r19, 0x0
	out portd, r19
	rjmp check

delay:
	ldi r19, 50
	ldi r20, 50
	ldi r21, 15

l1:
	dec r19
	brne l1
	dec r20
	brne l1
	dec r21
	brne l1
	nop
	ret
