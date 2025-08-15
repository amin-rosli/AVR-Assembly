;
; AssemblerApplication2.asm
;
; Created: 16/11/2022 9:17:44 AM
; Author : Amin
;


; Replace with your application code
start:
	ldi r16, 0xff
	ldi r17, 0x00
	out ddrb, r16
	out ddrc, r17
	in r18, pinc
	out portb, r18
    rjmp start

delay:
	ldi r19, 100
	ldi r20, 100
	ldi r21, 100

l1:
	dec r19
	brne l1
	dec r20
	brne l1
	dec r21
	brne l1
	nop
	ret

