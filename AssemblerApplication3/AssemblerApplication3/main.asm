;
; AssemblerApplication3.asm
;
; Created: 16/11/2022 10:14:31 AM
; Author : Amin
;


; Replace with your application code
start:
	ldi r16, 0xff
	ldi r17, 0x00
	ldi r18, 0xff
	out ddrb, r16

flash:
	;ldi r18, 0x1
	out portb0, r18
	rcall delay

	;ldi r18, 0x4
	out portb1, r18
	rcall delay

	;ldi r18, 0x10
	out portb2, r18
	rcall delay

	rjmp flash

delay:
	ldi r19, 100
	ldi r20, 150
	ldi r21, 230

l1:
	dec r19
	brne l1
	dec r20
	brne l1
	dec r21
	brne l1
	nop
	ret