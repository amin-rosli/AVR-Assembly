;
; AssemblerApplication5.asm
;
; Created: 19/11/2022 11:23:37 PM
; Author : Amin

; Replace with your application code
start:
    ldi r16, 0xff
	ldi r17, 0x00
	ldi r18, 0x63
	out ddrd, r16

count:
	out portd, r17
	rcall delay
	inc r17
	cp r17,r16
	breq reset
	rjmp count

reset:
	ldi r16, 0x00
	rjmp count

delay:
	ldi r19, 0xff
	ldi r20, 0xff
	ldi r21, 0x5

l1:
	dec r19
	brne l1
	dec r20
	brne l1
	dec r21
	brne l1
	nop
	ret
