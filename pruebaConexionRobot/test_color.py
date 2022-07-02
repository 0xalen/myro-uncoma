# -*- coding:utf-8 -*-
from robofai3 import *
import random


#init()

iz=0

def buscar(color):

#	encontrado = 0
#	while encontrado == 0:
	c=0
	while(c<40):
	#for i in range(20):

		detectar_objetos()
		x = buscarcolor(color)
		c=cuantocolor(color)
		print (c)
#	if x == 0:
#		if iz==0:
##			izquierda(.2)
#			iz = 1
#		continue
#	elif x < 50 :
		if x == 0:
			derecha(.3, .1)
		elif x < 40 :
			izquierda(.2, .1)
		elif x > 120 :
			derecha(.2, .1)
		else :
			adelante(.3, .1)

		iz = 0
		wait(2)
	bipbip()

def answ():
	answers = ['ewww!','digamos que vi mejores','prefiero el gris, me hace acordar a mi infancia', 'aburrido', 'interesante', '\"fascinante\"','no mi favorito, pero ¿qué se yo? sólo soy un robot', 'emm... ok, ¿siguiente?', '¿en serio?¿ese color?']
	cant = len(answers)
	print ('Este color es... '+	answers[int(random.random()*cant)])
	
def pic():
	wait(1)
	foto()
	verfoto()
				

#buscar(AZUL)
def main():	
	init()
	buscar(ROJO)
	pic()
	answ()
	buscar(VERDE)
	pic()
	answ()
	buscar(AZUL)
	pic()
	answ()
	buscar(ROJO)
	pic()
	answ()
#stop()

