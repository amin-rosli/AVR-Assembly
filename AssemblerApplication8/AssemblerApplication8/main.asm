;
; AssemblerApplication8.asm
;
; Created: 21/11/2022 11:07:50 PM
; Author : Amin

.def motor = r16		;define r16 as motor

start:
   ldi motor, 0xff		;load '255' to motor
   out ddrb, motor		;set all of PortB as output
   ldi motor, 0x01		;let motor as '1'

run:
	inc motor			;increment motor (0b10)
	out portb, motor	;output motor to PortB
	rcall delay			;call delay routine
	dec motor			;decrement motor (0b01)
	out portb, motor	;output motor to PortB
	rcall delay			;call delay routine
	rjmp run			;rjmp to run (loop)

delay:
	ldi r19, 0xff
	ldi r20, 0xff
	ldi r21, 0xc8

l1:
	dec r19
	brne l1
	dec r20
	brne l1
	dec r21
	brne l1
	nop
	ret

