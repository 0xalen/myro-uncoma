#!/bin/bash


echo " - Chequeamos python 2.7"
#dpkg -l python2.7 || exit 1
# esto ya lo hice
echo " - Instalamos paquetes básicos"
apt-get -y install git-core build-essential python-serial python-tk \
	libsdl1.2debian libsdl-image1.2 libsdl-image1.2-dev \
	libcurl3 libcurl3-gnutls libcurl3-nss libcurl4-nss-dev socat curl \
	|| exit

#eho " - Bajamos el repositorio git de todo el software"
#git clone https://github.com/zrafa/se_uncoma.git || exit 1

#echo " - Instalamos la biblioteca de vision"
# IMPORTANTE, hay que instalar cvblob, y para cvblob se necesita cmake y libcv-dev

# ---------------------------------------------------------
# Instalar libopencv-dev python-opencv




# Descomprimir cvblob-0.10.4-scr.tgz 
tar xzvf se_uncoma/robotitos/faivision/cvblob/cvblob-0.10.4-scr.tgz

# Instalar cvblob

cd cvblob
mkdir build
cd build
cmake .. -DOpenCV_DIR=~/cvblob/cvBlob 
make
make install 

# Arreglar errores de código (faivision.c )
# en faivision.c agregar #include <string.h>

# compilar comm.c manualmente sin -Wall
gcc -c -02 -fPIC comm.c -o comm.o

# -----------------------------------------------------------

#cd se_uncoma/robotitos/faivision/
#make clean
#make
#make install || exit 1

# -----------------------------------------------------------
# Compilar duino_sync.c con GNU compiler (gcc)
gcc -Wall -o duino_sync duino_sync.c


# ------------------------------------------------------
# echo " - Instalamos el programa de sincronización"
#cd ../sync/
#make clean
#make
#make install || exit 1

# ------------------------------------
# Instalar modulo idlelib 
apt-get install idle-python2.7 

--------------------------------------

# esto ya lo hice
# echo " - Instalamos MyRo"
#cd original ../myro-python/
#cd /home/user/se_uncoma/robotitos/myro-python
#unzip myro-2.9.1.zip
#python setup.py install

# echo " - Instalamos la version del scribbler.py de la FAI"
#cp scribbler.py /usr/local/lib/python2.7/dist-packages/myro/robots/scribbler.py

