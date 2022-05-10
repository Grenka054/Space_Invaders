asect  0x00
ldi r0, 0x3c
ldi r1, 0xF0
st r1, r0 #инициализация стенок
inc r1
st r1, r0
inc r1
st r1, r0
inc r1
st r1, r0
push r0 #мусор в стэк
main:
	pop r0
	ldi r0,string #стенки
	ldi r1,flags #флаги
	ldi r3,3 #счётчик
	
	while 
		tst r3
	stays ge
		push r3
		ld r0, r2
		ld r1, r3
		xor r2, r3
		st r0, r3
		inc r0
		inc r1
		pop r3
		dec r3
	wend
jsr main:
	
halt

asect 0xF0
string:  #на вход строка - массив из 4 байт
		ds 4
flags:  #флаги на попадание в стенки
	   dc 0, 4 , 4 , 0
end