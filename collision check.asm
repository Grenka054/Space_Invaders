asect 0x00

ldi r0, str #исходная строка
ldi r1,0 # адрес чтения
ldi r2, 3 #счётчик

while 
	tst r2
stays ge 
	push r0
	add r1,r0
	ld r0,r0 #сдвиг на нужный адрес
	
	#если было попадание - тупо выгружаем номер монстра от 1 до 4
	if 
		tst r0
	is nz
		ldi r0,number
		st r0,r1
		break
	fi
	pop r0
	inc r1
	dec r2 
wend



halt


INPUTS>
str: #dc 0b00000000, 0b00000000, 0b00000000, 0b00100000 #test
     ds 4

OUTPUTS> 
number: ds 1
end