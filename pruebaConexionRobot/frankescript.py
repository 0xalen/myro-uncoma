# -*- coding:utf-8 -*-
from robofai3 import *


def mode_inter():
    print ("Frankestito: Primero, voy a hacer una espiral hacia atrás")
    n = 10
    while n > 0:
        atras(.3, .2)
        izquierda(.3, .2)
        wait(1)
        foto()
        verfoto()
        n -= 1
    print ("Frankestito: ¿Y? ¿Qué les pareció? \nFrankestito: No hace falta que lo digan. Geniales, lo sé.")
    beep(.3, .29)
    print ("Frankestito: Ahora: Espiral hacia adelante")
    n = 10
    while n > 0:
        adelante(.3, .2)
        izquierda(.3, .2)
        wait(1)
        foto()
        verfoto()
        n -= 1
        print ("Frankestito: Geniales otra vez, por supuesto.'")
    beep(.3, .29)
    beep(.3, .29)
    print ("Frankestito: ¡Linea recta hacia atras!")
    n = 7
    while n > 0:
        atras(.3, .2)
        wait(1)
        foto()
        verfoto()
        n -= 1
    beep(.3, .29)
    beep(.3, .29)
    beep(.3, .29)
    beep(.3, .29)
    print ("Frankestito: El gran final: Linea recta hacia adelante")
    n = 10
    while n > 0:
        adelante(.3, .2)
        wait(1)
        foto()
        verfoto()
        n -= 1
        print ("Frankestito: Fama y fortuna, ¡ahí vamos!")
    beep(.3, .29)
    beep(.3, .29)
    beep(.3, .29)
    beep(.3, .29)

def main():
    # Ejecución de la secuencia de acciones
    print ("Bienvenidos al módulo ""Frankestito el fotografo"" ")
    choice = True
    while choice:
        mode_inter()
        print ("¿Quiere intentar de nuevo? S: si N:no \n")
        k=raw_input()
        if k == 'S' or k == 's':
            print ("Frankestito: Sabia elección.")
        else:
            if k == 'N' or k == 'n':
                print ("Frankestito: Ok. Hace lo que quieras... \n")
                choice = False
                print ("Bueno... No es mi culpa que no puedan reconocer talento verdadero. ¡Adiós!")
    beep(880, .4)
    beep(440, .3)
    beep(220, .2)
    beep(110, .1)