#!/usr/bin/python3

import RPi.GPIO as GPIO
import time
import sys

GPIO.setmode(GPIO.BCM)
control_pins = [21,20,16,19]
x=int(sys.argv[1])
rotation=int((x*512/360)%512)
duration=int(sys.argv[2])
for pin in control_pins:
  GPIO.setup(pin, GPIO.OUT)
  GPIO.output(pin, 0)
halfstep_seq = [
  [1,0,0,0],
  [1,1,0,0],
  [0,1,0,0],
  [0,1,1,0],
  [0,0,1,0],
  [0,0,1,1],
  [0,0,0,1],
  [1,0,0,1]
]
start =time.time()
while (time.time()-start<duration):
  for i in range(rotation):
    for halfstep in range(8):
      for pin in range(4):
        GPIO.output(control_pins[pin], halfstep_seq[halfstep][pin])
      time.sleep(0.005)
  for i in range(rotation):
    for halfstep in range(8):
      for pin in range(4):
        GPIO.output(control_pins[pin], halfstep_seq[7-halfstep][pin])
      time.sleep(0.005)      
  
