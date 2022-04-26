asect 0x00

ldi r0, str #исходная строка
ldi r1,0 # адрес чтения
ldi r2, 3 #счётчик

move r0,r3

while 
	tst r2
stays ge 
	#сдвиг на нужный адрес
	ld r3,r0
	
	#если было попадание - тупо выгружаем номер монстра от 0 до 3
	if 
		tst r0
	is nz
		ldi r0,number
		st r0,r1
		break
	fi
	inc r3
	inc r1
	dec r2 
wend



halt


INPUTS>
str: #dc 0b00000000, 0b00000000, 0b00110001, 0b00011000 #test
     ds 4

OUTPUTS> 
number: ds 1
end