
;<Program title>

jmp start

;data


;code
start:  lhld 4000h
	xchg 
	lhld 4002h
	mvi c,00h 
	dad d
	jnc loop
	inr c
loop:	shld 4004h
	mov a,c
	sta 4006h
hlt