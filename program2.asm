
;<Program title>

jmp start1

;data


;code
start:  lxi h, 2500H
	mov c, m
	lxi h, 2501H
	lxi d, 2600H
loop1:	mov a, m
	ani 81H
	jz loop2
	mov a, m
	stax d
	inx d
loop2:  inx h
	dcr c
	jnz loop1
	hlt

start1:	mvi a, 80H
	ani 80H
	sta 2510H
hlt