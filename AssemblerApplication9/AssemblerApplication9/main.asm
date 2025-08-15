;
; AssemblerApplication9.asm
;
; Created: 22/11/2022 12:29:02 AM
; Author : Amin

start:
	ldi r16, 0xff		;load '255' to r16
	out ddrd, r16		;set all of PortD as output
	ldi r17, 0b10100111	;set timer configuration register A at r17
	; COM0A1,COM0A0 = 10 (clear at OCR0A during up, set OCR0A during down )
	; COM0B1,COM0B0 = 10 (clear at OCR0B, set at OCR0A)
	; WGM02,WGM01,WGM00 = 111 (UP to OCR0A, PWM mode)
	out tccr0a, r17		;set the timer configuration to timer control register A
	ldi r17, 0b00000100	;set timer configuration register B at r17
	; CS02,CS01,CS00 = 100 (prescalar value of 256)
	out tccr0b, r17		;set the timer configuration to timer control register B
	out ocr0a, r16		;set output compare register A to 255

main:
	call pwm0			;call pwm0 routine
	call delay			;call delay routine
	call pwm1			;call pwm1 routine
	call delay			
	call pwm2			;call pwm2 routine
	call delay			
	call pwm3			;call pwm3 routine
	call delay			;call delay routine
	rjmp main			;rjmp to main (loop)


pwm0:
	ldi r17, 0			;load 0 to register 17
	out ocr0b, r17		;load 0 to output compare register B
	ret					;return to main function

pwm1:
	ldi r17, 80			;load 80 to register 17
	out ocr0b, r17		;load 80 to output compare register B
	ret

pwm2:
	ldi r17, 120		;load 120 to register 17
	out ocr0b, r17		;load 120 to output compare register B
	ret

pwm3:
	ldi r17, 250		;load 250 to register 17
	out ocr0b, r17		;load 250 to output compare register B
	ret

delay:
	ldi r19, 0xff
	ldi r20, 0xff
	ldi r21, 0xff

l1:
	dec r19
	brne l1
	dec r20
	brne l1
	dec r21
	brne l1
	nop
	ret
