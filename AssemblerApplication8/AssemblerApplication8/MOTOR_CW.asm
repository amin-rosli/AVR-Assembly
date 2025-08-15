;
; AssemblerApplication8.asm
;
; Created: 21/11/2022 11:07:50 PM
; Author : Amin


; Replace with your application code
.def motor = r16

start:
   ldi motor, 0xff
   out ddrb, motor
   ldi motor, 0x01

run:
	inc motor
	out portb, motor
	rcall delay
	dec motor
	out portb, motor
	rcall delay
	rjmp run

delay:
	ldi r19, 0xff
	ldi r20, 0xff
	ldi r21, 0x15

l1:
	dec r19
	brne l1
	dec r20
	brne l1
	dec r21
	brne l1
	nop
	ret

