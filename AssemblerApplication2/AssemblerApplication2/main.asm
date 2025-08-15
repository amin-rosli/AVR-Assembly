;
; AssemblerApplication2.asm
;
; Created: 16/11/2022 9:17:44 AM
; Author : Amin

start:
	ldi r16, 0xff	;load '255' to register 16
	ldi r17, 0x00	;load '0' to register 17
	out ddrb, r16	;let all of portB as output
	out ddrc, r17	;let all of portC as input
	in r18, pinc	;load value of pinC to r18
	out portb, r18	;output value of r18 to portB
    rjmp start		;jump to start (loop)

delay:
	ldi r19, 100    ;loads '100' to register 19
	ldi r20, 100	;loads '100' to register 20
	ldi r21, 100	;loads '100' to register 21

l1:
	dec r19			;decrement r19 (-1)
	brne l1			;if r19!=0, branch to l1
	dec r20			;decrement r20 (-1)
	brne l1			;if r20!=0, branch to l1
	dec r21			;decrement r21 (-1)
	brne l1			;if r21!=0, branch to l1
	nop				;no operation
	ret				;return to main function



