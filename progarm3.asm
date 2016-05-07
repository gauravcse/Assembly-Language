
;<Program title>

jmp start

;data


;code
start:  lxi h, 2500H
	mov c, m
	lxi h, 2501H
	lxi d, 2600H
loop1:	mov a, m
	rlc
	jnc loop2
	rrc
	rrc
	jnc loop2
	mov a, m
	stax d
	inx d
loop2:	inx h
	dcr c
	jnz loop1
hlt