
from myro import *
from myro import getName as nombre
from myro import forward as adelante, backward as atras
from myro import turnLeft as izquierda, turnRight as derecha
import subprocess
import Image

vision = ""
robot = ""
ROJO=0
VERDE=1
AZUL=2
BLANCO=3
NEGRO=4

PYTHON=0

def nmOff():
	subprocess.call(["/etc/init.d/network-manager", "stop"])

def nmOn():
	subprocess.call(["/etc/init.d/network-manager", "start"])

def netOn():
	# subprocess.call(["/sbin/iwconfig", "wlan0","essid","robotsfai"])
	# subprocess.call(["/sbin/ifconfig", "wlan0","10.0.20.5"])
	subprocess.call(["/sbin/ifconfig", "br0:1","10.0.20.5"])
	#subprocess.call(["/bin/ping", "-c 4", "192.168.2.100"])

def lsterms():
	return subprocess.Popen(["ls", "/dev/pts"], stdout=subprocess.PIPE).communicate()[0]

def spawnSocat():
	import os
	from subprocess import Popen
	# socat_cmd = "socat pty,raw,echo=0 tcp:192.168.2.100:2000"
	socatBin = "/usr/bin/socat"
	socatCmd = [socatBin,"pty,raw,echo=0","tcp:192.168.1.1:2000"]
	p = subprocess.Popen(socatCmd)
	wait(2)
	return p.pid

def killallSocat():
	subprocess.call(["/usr/bin/killall", "socat"])
	

def synch():
	return subprocess.Popen(["duino_sync", "192.168.1.1"])
	
	
def faivision():
	import ctypes
	global vision
	vision = ctypes.CDLL("/usr/local/lib/libfaivision.so")
	vision.faivision_init(PYTHON, "192.168.1.1")

def foto():
	url = "http://192.168.1.1:8080?action=snapshot"
	img = "snapshot.png"
	urllib.urlretrieve(url,img)
	
def verfoto(): 
	foto()
	img = Image.open("snapshot.png")
	img.show()

def detectar_objetos():
	vision.detectar_objetos (1, 1, 160, 120) 

def calibrar_color(color):
	vision.calibrar_color(color)

def buscarcolor(color):
	return vision.objeto_x(color)

def cuantocolor(color):
	return vision.objeto_porc(color)
	
def luz_izq_on():
	setLED("left", "on")

def luz_izq_off():
	setLED("left", "off")

def luz_der_on():
	setLED("right", "on")

def luz_der_off():
	setLED("right", "off")

def bipbip():
	beep(.3, .29)
	beep(.3, .29)

def parpadear():
	for i in range(3):
		luz_izq_on()
		luz_der_on()
		wait(.3)
		luz_izq_off()
		luz_der_off()
		wait(.3)


def init():
#	nmOff()
#	netOn()
	killallSocat()

	# sincronizamos y esperamos
	synchOutput = synch()
	wait(4)

	# print "SYNCH ",synchOutput
	terms_before = lsterms()
	socatPid = spawnSocat()
	# print "socat pid = ",socatPid
	terms_after = lsterms()
	# print "TERMS BEFORE ",terms_before
	# print "TERMS AFTER ",terms_after
	socat_term = ''
	terms_before_w = terms_before.split()
	terms_after_w = terms_after.split()
	for t in terms_after_w:
		# print  t
		if not t in terms_before_w:
			socat_term = "/dev/pts/%d" % (int(t))
	print "SOCAT_TERM ",socat_term
	global robot
	robot = Scribbler(socat_term)
	robot.getName()
	faivision()
	print "FUNCIONES"
	print "nombre(),"
	print "adelante(.3,.2), atras(.3,.2),"
	print "derecha(.3,.2), izquierda(.3,.2),"
	#print "foto(), verfoto(),"
	#print "buscarcolor(COLOR), cuantocolor(COLOR)"
	#print "ROJO, VERDE, AZUL, BLANCO, NEGRO"

def rectangulo():
	for i in range(2):
		adelante(.3,2)
		derecha(.3,.3)
		adelante(.3,1)
		derecha(.3,.3)

def pianoToScrib(pianoKey):
    k = 440 * (2 ** ((pianoKey-49)/12))
    return k
   
def playPiano(time, pianoKey):
    p = beep(time, pianoToScrib(pianoKey))
    return p
   
def testPiano():
    beep(0.5, pianoToScrib(52)) #C
    playPiano(0.5, 54) #D
    playPiano(0.5, 56) #E
    playPiano(0.5, 57) #F
    playPiano(0.5, 59) #G
    playPiano(0.5, 61) #A
    playPiano(0.5, 63) #B
    wait(1)
def power(freq):
    p5 = 1.5 * freq
    return p5
   
def playPower(time, freq):
    pp = beep(time, freq, power(freq))
    return pp
   
def testGuitar():
    f = pianoToScrib(57)
    g = pianoToScrib(59)
    playPower(.15, f)
    for i in range(5):
        playPower(.15, g)
        playPower(.15, g)
        playPower(.15, f)
        playPower(.15, g)
        wait(.5)
        playPower(.5, f)
 
def freqToPitch(freq):
    ftp = 69 + (12 * log((freq/440), 2))
    return ftp      
 
def pitchToFreq(p):
    ptf = 440 * (2 ** ((p-69)/12))      
    return ptf
   
def playMajorScale(startingPitch):
    beep(0.5, pitchToFreq(startingPitch + 2))
    beep(0.5, pitchToFreq(startingPitch + 4))
    beep(0.5, pitchToFreq(startingPitch + 5))
    beep(0.5, pitchToFreq(startingPitch + 7))
    beep(0.5, pitchToFreq(startingPitch + 9))
    beep(0.5, pitchToFreq(startingPitch + 11))
    beep(0.5, pitchToFreq(startingPitch + 12))

def stopWheels():
    motors(0, 0)
   
def goForward(p):
    motors(p, p)
   
def goBackward(p):
    motors(-p, -p)
   
def spinLeft(p):
    motors(-p, p)
   
def spinRight(p):
    motors(p, -p)    
   
def test():
    #goForward(.3)    
    wait(1)
   # spinLeft(.1)
    wait(.1)
    stopWheels()

def gamepadTest():
    while True:
        status = getGamepad("robot")
        print ("The entire status of the gamepad looks like", status)
        buttons = status['button']
        print ("The buttons:", buttons)
        print ("The first button reads", buttons[0])
       
def beepA(length, octave):
    beep(length, 27.5 * (2**octave))
 
def beepB(length, octave):
    beep(length, 30.87 * (2**octave))
   
def beepC(length, octave):
    beep(length, 16.35 * (2**octave))
   
def beepD(length, octave):
    beep(length, 18.35 * (2**octave))
   
def beepE(length, octave):
    beep(length, 20.60 * (2**octave))
   
def beepF(length, octave):
    beep(length, 21.83 * (2**octave))
   
def beepG(length, octave):
    beep(length, 24.50 * (2**octave))
 
def myGamepad():
    """HOW TO USE MY GAMEPAD
      up directional button: forward for duration of press
      down directional button: backward for duration of press
      left directional button: rotate left for duration of press
      right directional button: rotate right for duration of press
      top left side-button: beep A5 for duration of press
      bottom left side-button: beep B5 for duration of press
      top right side-button: beep C5 for duration of press
      bottom right side-button: beep D5 for duration of press
      north button: stop the myGamepad() function
      west button: beep E5 for duration of press
      south button: beep F5 for duration of press
      east button: beep G5 for duration of press
   """
    keepGoing = True
    while keepGoing:
        status = getGamepad()
        buttons = status['button']
        axes = status['axis']
        if [0, 0, 0, 0, 0, 0, 0, 1] == buttons:
            beepC(0, 5)
        if [0, 0, 0, 0, 0, 0, 1, 0] == buttons:
            beepD(0, 5)
        if [0, 0, 0, 0, 0, 1, 0, 0] == buttons:
            beepA(0, 5)
        if [0, 0, 0, 0, 1, 0, 0, 0] == buttons:
            beepB(0, 5)
        if [0, 1, 0, 0, 0, 0, 0, 0] == buttons:
            beepE(0, 5)
        if [1, 0, 0, 0, 0, 0, 0, 0] == buttons:
            beepF(0, 5)    
        if [0, 0, 1, 0, 0, 0, 0, 0] == buttons:
            beepG(0, 5)    
        if [0, 0, 0, 0, 0, 0, 0, 0] == buttons:
            beep(0.001, 0)
        if [0, 0, 0, 1, 0, 0, 0, 0] == buttons:
            keepGoing = False
        if [0.0, -1.0] == axes:
            motors(1, 1)
        if [0.0, 1.0] == axes:
            motors(-1, -1)
        if [-1.0, 0.0] == axes:
            motors(-1, 1)
        if [1.0, 0.0] == axes:
            motors(1, -1)
        if [0.0, 0.0] == axes:
            stop()

# init()
# robot.setLED("left", "on")

# end
# wait(5)
# robot.setLED("left", "off")
# killallSocat()
