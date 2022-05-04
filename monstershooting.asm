asect 0x00
#для отладки
ldi r0,0x75
ldi r1,3
st r0,r1

ldi r0,0x76
ldi r1,5
st r0,r1

ldi r2,0x01
while
tst r2
stays nz
	#подгружает случайное число из 0x75, сгенереное аппараткой
	ldi r2,0x75
	ldi r0,8
	ldi r1,0
	ld r2,r2
		#умножает его на 8
		while
		tst r2
		stays nz
		add r0,r1
		dec r2
		wend
		#прибавляет к нему число, выдаваемое с шифратора приоритетов, отниммает 2, получаем примерно середину монстра
	ldi r2, 0x76
	ld r0,r0
	add r0,r1
	ldi r0,2
	sub r1,r0
	#выгружает это значение в 0x77
	ldi r2,0x77
	st r2,r0
	
	ldi r2,0x78
	ldi r0,4
		while
		tst r0
		stays nz
		ldi r1,0x01
		ldi r3,7
			while
			tst r3
			stays nz
			rol r1
			dec r3
			st r2,r1
			wend
		ldi r1,0
		st r2,r1
		dec r0
		inc r2	
		wend
	
wend


end
