;
; AssemblerApplication3.asm
;
; Created: 16/11/2022 10:14:31 AM
; Author : Amin

start:
	ldi r16, 0xff	;load '255' to register 16
	out ddrb, r16	;let all of portB as output

flash:
	ldi r18, 0x1	;let r18 as 0b01
	out portb, r18	;output 0b01 at portD
	rcall delay		;call delay

	ldi r18, 0x4	;let r18 as 0b100
	out portb, r18	;output 0b100 at portD
	rcall delay		;call delay

	ldi r18, 0x10	;let r18 as 0b10000
	out portb, r18	;output 0b10000 at portD
	rcall delay		;call delay

	rjmp flash		;jump to flash

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

