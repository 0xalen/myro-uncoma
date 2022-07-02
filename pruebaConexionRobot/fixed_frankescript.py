# -*- coding:utf-8 -*-
from robofai3 import *


def mode_inter():
    print ("Primero, voy a hacer una espiral hacia atrás")
    n = 5
    while n > 0:
        atras(.2, .2)
        izquierda(.2, .2)
        wait(1)
        foto()
        verfoto()
        n -= 1
    print ("No hace falta que lo digan. Geniales, lo sé.")
    beep(.3, .29)
    print ("Ahora: Espiral hacia adelante")
    n = 5
    while n > 0:
        adelante(.2, .2)
        izquierda(.2, .2)
        wait(1)
        foto()
        verfoto()
        n -= 1
    print ("Geniales otra vez, por supuesto.'")
    beep(.3, .29)
    beep(.3, .29)
    print ("¡Linea recta hacia atras!")
    n = 5
    while n > 0:
        atras(.2, .2)
        wait(1)
        foto()
        verfoto()
        n -= 1
    beep(.3, .29)
    beep(.3, .29)
    beep(.3, .29)
    beep(.3, .29)
    print ("El gran final: Linea recta hacia adelante")
    n = 10
    while n > 0:
        adelante(.3, .2)
        wait(1)
        foto()
        verfoto()
        n -= 1
    print ("Fama y fortuna, ¡ahí vamos!")
    beep(.3, .29)
    beep(.3, .29)
    beep(.3, .29)
    beep(.3, .29)

def main():
    # Ejecución de la secuencia de acciones
    print ("Damas y caballeros... con ustedes: \n\"¡Frankestito el fotografo!\" ")
    choice = True
    while choice:
        mode_inter()
        print ("¿Quiere intentar de nuevo? S: si N:no \n")
        k=raw_input()
        if k == 'S' or k == 's' or k == 'si' or k == 'Si' or k == 'SI':
            print ("Sabia elección.")

        elif k == 'N' or k == 'n' or k == 'no' or k == 'No' or k == 'NO':
                print ("Ok... Como quieras. Ya me había aburrido de todas formas")
                choice = False
                print ("Además, no es mi culpa que no puedan reconocer talento cuando lo ven. \ņ¡Adiós!")
        else:
	    print ("Esa ni siquiera es una opción. Eso es todo... ¡No lo soporto más!\n¡Adiós!") 

    beep(880, .4)
    beep(440, .3)
    beep(220, .2)
    beep(110, .1)
