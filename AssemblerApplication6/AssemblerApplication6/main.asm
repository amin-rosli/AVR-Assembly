;
; AssemblerApplication6.asm
;
; Created: 19/11/2022 11:50:49 PM
; Author : Amin

.def num10 = r16		;define num10 for comparison
.def digit1 = r17		;define digit1 of the counter
.def digit2 = r18		;define digit2 of the counter

start:
	ldi num10, 0xA		;load '10' to num10
	ldi digit1, 0x00	;load '0' to digit1
	ldi digit2, 0x00	;load '0' to digit2
	ldi r20, 0xff		;load '255' to r20
	out ddrb, r20		;let all of portB as output
	out ddrd, r20		;let all of portD as output

count:					
	out portd, digit1	;output value of digit1 to portD
	out portb, digit2	;output value of digit2 to portB
	rcall delay			;call delay
	inc digit1			;increment digit1 (+1)
	cpi digit1, 0xA		;compare digit1 with '10'
	breq tens			;branch to tens if digit1 == 10
	rjmp count			;jump to count

tens:
	ldi digit1, 0x00	;load '0' to digit1
	inc digit2			;increment digit2 (+1)
	cpse digit2, num10	;compare digit2 with num10
	rjmp count			;jump to count if digit2!=10
	ldi digit2, 0x00	;load '0' to digit2 if digit2==10
	rjmp count			;jump to count

delay:
	ldi r19, 0xff
	ldi r20, 0xff
	ldi r21, 0x19

l1:
	dec r19
	brne l1
	dec r20
	brne l1
	dec r21
	brne l1
	nop
	ret


