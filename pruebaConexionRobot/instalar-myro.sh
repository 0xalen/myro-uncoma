#!/bin/bash


echo " - Chequeamos python 2.7"
dpkg -l python2.7 || exit 1
#esto ya lo hice
#echo " - Instalamos paquetes basicos"
#apt-get -y install  git-core build-essential python-serial python-tk \
#	libsdl1.2debian libsdl1.2-dev libsdl-image1.2 libsdl-image1.2-dev \
#	libcurl3 libcurl3-gnutls libcurl3-nss libcurl4-nss-dev socat curl   \
#	|| exit 1

#echo " - Bajamos el repositorio git de todo el software"
#git clone https://github.com/zrafa/se_uncoma.git || exit 1

echo " - Instalamos la biblioteca de vision"
# IMPORTANTE, hay que instalar cvblob, y para cvblob se necesita cmake y libcv-dev
cd se_uncoma/robotitos/faivision/
make clean
make
make install || exit 1

echo " - Instalamos el programa de sincronizacion"
cd ../sync/
make clean
make
make install || exit 1

#esto ya lo hice
#echo " - Instalamos MyRo"
#cd original ../myro-python/
#cd /home/franco/se_uncoma/robotitos/myro-python
#unzip myro-2.9.1.zip
#python setup.py install

#echo " - Instalamos la version del scribbler.py de la FAI"
#cp scribbler.py /usr/local/lib/python2.7/dist-packages/myro/robots/scribbler.py







