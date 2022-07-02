# frankespiral:    Starts the sequence in frankespiral 
#
# description:     This is a scrip that makes Frankestito spin around, take pictures
#                  and show them on the screen. It can be used either in automatic mode
#                  or interactive mode (Such choice will be offered at the beginning)
#y
# requirements:   It only works once the library 'robofai3' is imported.
#-*- coding: utf-8 -*-

def mode_inter():
    op=raw_input('Frankestito: ¿Que hago? \n1:Espiral hacia atrás \n2: Espiral hacia adelante \n3: Linea recta hacia atras \n4: Linea recta hacia adelante \n')
    if op=='1':
        oc=True
        while oc==True: 
            k=raw_input('Frankestito: ¿Cuantas fotos quieren que tome?: \n')
            while n>k:
                atras(.3,.2)
                izquierda(.3,.2)
                foto()
                verfoto()
                n=n-1
            print 'Frankestito: ¿Y? ¿Qué les pareció? \nFrankestito: No hace falta que lo digan. Geniales, lo sé \n'
            an=raw_input('Frankestito: ¿Quieren que lo haga de nuevo? S:si N:no \n')
            if an=='S' or an=='s':
                print 'Frankestito: Buena elección. Usted es una persona sabia'
            else:
                if an=='N' or an=='n':
                    print 'Frankestito: Ok. Hace lo que quieras... '
                    oc=False
    elif op=='2':
        oc=True
        while oc==True: 
            k=raw_input('Frankestito: ¿Cuantas fotos quieren que tome?: \n')
            while n>k:
                adelante(.3,.2)
                izquierda(.3,.2)
                foto()
                verfoto()
                n=n-1
            print 'Frankestito: ¿Y? ¿Qué les pareció? \nFrankestito: No hace falta que lo digan. Geniales, lo sé \n'
            an=raw_input('Frankestito: ¿Quieren que lo haga de nuevo? S:si N:no \n')
            if an=='S' or an=='s':
                print 'Frankestito: Buena elección. Usted es una persona sabia'
            else:
                if an=='N' or an=='n':
                    print 'Frankestito: Ok. Hace lo que quieras... '
                    oc=False
    elif op=='3':
        oc=True
        while oc==True: 
            k=raw_input('Frankestito: ¿Cuantas fotos quieren que tome?: \n')
            while n>k:
                atras
                foto()
                verfoto()
                n=n-1
            print 'Frankestito: ¿Y? ¿Qué les pareció? \nFrankestito: No hace falta que lo digan. Geniales, lo sé \n'
            an=raw_input('Frankestito: ¿Quieren que lo haga de nuevo? S:si N:no \n')
            if an=='S' or an=='s':
                print 'Frankestito: Buena elección. Usted es una persona sabia'
            else:
                if an=='N' or an=='n':
                    print 'Frankestito: Ok. Hace lo que quieras... '
                    oc=False
    elif op=='4':
        oc=True
        while oc==True: 
            k=raw_input('Frankestito: ¿Cuantas fotos quieren que tome?: \n')
            while n>k:
                adelante(.3,.2)				
                foto()
                verfoto()
                n=n-1
            print 'Frankestito: ¿Y? ¿Qué les pareció? \nFrankestito: No hace falta que lo digan. Geniales, lo sé \n'
            an=raw_input('Frankestito: ¿Quieren que lo haga de nuevo? S:si N:no \n')
            if an=='S' or an=='s':
                print 'Frankestito: Buena elección. Usted es una persona sabia'
            else:
                if an=='N' or an=='n':
                    print 'Frankestito: Ok. Hace lo que quieras... '
                    oc=False		

def mode_auto():
    n=20
    while n>10:
        atras(.3,.2)
        izquierda(.3,.2)
        foto()
        verfoto()
        n=n-1
        print("Frankestito: ¿Y? ¿Qué les pareció? \nFrankestito: No hace falta que lo digan. Geniales, lo sé")
        print 'Bienvenidos al módulo "Frankestito el fotografo" '
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