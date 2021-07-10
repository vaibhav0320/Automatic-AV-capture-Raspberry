#!/usr/bin/python3
import RPi.GPIO as GPIO
import subprocess
import time
import sys
GPIO.setmode(GPIO.BCM)

GPIO.setup(14, GPIO.IN, pull_up_down=GPIO.PUD_DOWN)
while True:	
	x=not(GPIO.input(14))
	#print(x)
	if(x==0):
		string=""
		for i in sys.argv[1:]:
			string+=(i+" ")		 
		s=subprocess.call("/home/pi/Desktop/av.sh "+string,shell=True)
		break



		

