#-*- coding: utf-8 -*-
from robofai3 import *

def mode_auto():
    n=20
    while n>10:
        atras(.3,.2)
        izquierda(.3,.2)
        foto()
        verfoto()
        n=n-1
    print("Frankestito: ¿Y? ¿Qué les pareció? \nFrankestito: No hace falta que lo digan. Geniales, lo sé")
    print ("Bienvenidos al módulo ""Frankestito el fotografo"" ")
    
    choice=True
    while choice==True:
        print 'Elegir modo: i: interactivo a: automático  \n'
        chmode = raw_input()
        if chmode==i:
            mode_inter()
        else:
            mode_auto()
        print '¿Quiere intentar de nuevo? S: si N:no \n'
        if choice=='S' or choice=='s':
            print 'Frankestito: Sabia elección.'
        else:
            if choice=='N' or choice=='n':
                print 'Frankestito: Ok. Hace lo que quieras... \n'
                choice=False		
                print 'Bueno... Adiós, supongo'
                beep (440,.4)
