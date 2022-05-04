asect 0x00

ldi r3,0x02
while
tst r3
stays nz

ldi r1, str #исходная строка
ldi r0,0 # номер монстра
ldi r2, 3 #счётчик

move r1,r3

while 
	tst r2
stays ge 
	#сдвиг на нужный адрес
	ld r3,r1
	
	#если было попадание - тупо выгружаем номер монстра от 0 до 3
	if 
		tst r1
	is nz
		break
	fi
	inc r3
	inc r0
	dec r2 
wend

#в r0 лежит номер врага
ldi r1, 1
ldi r2, enemies #врагов в r2
ld r2,r2
#сдвиг единицы влево, чтобы получилась маска для байта врагов
while
  tst r0
stays nz
  shl r1 #mask
  dec r0  
wend

if
  move r1, r3
  and r2, r3
  tst r3 #если 0 - смотреть в верхнем ряду (сдвиг еще на 4)
is z
  ldi r0, 4
  while
    tst r0
  stays nz
    shl r1 #mask
    dec r0  
  wend
fi

#наверное, этот if не нужен, иначе попадания все таки не было?
#if
#  move r1, r3
#  and r2, r3
#  tst r3 #если 0 - пуля летит дальше
#is nz
  xor r1, r2
#fi
ldi r0, enemies
st r0, r2
wend

asect 0xc0
str: dc 0b00000000, 0b00000000, 0b00000000, 0b00000100 #test
     #ds 4
enemies: 
  dc 0b00101111
end
