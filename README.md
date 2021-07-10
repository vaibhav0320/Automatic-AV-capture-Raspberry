# Automatic-AV-capture-Raspberry

The aim of the project is to record audio and video using the raspberry pi
module and then store it on memory for later usage.
We will run the command ‘starteventdetect’ or script file ‘led.py’ by in the
command prompt. Now when the event is triggered that is when it will
detect high voltage on GPIO pin 14 the execution of the script file will run
ahead.
This event will be triggered manually by switching on the LED in the
external breadboard circuit. So as the LED lights the module will detect
high voltage and the execution will run ahead.
Then next av.sh script file will run and the stepper motor will start to
function rotating for the angle of 360° and simultaneously the camera
fixed on the motor will rotate along with it and capturing the video of the
surrounding for the assigned time of 2 minutes. And as soon as the
execution stops the . MP4 file along with raw video format file .H264 is
created on the desktop with the name of the file stated as the date and
the time of the time of recording it using the variable of timestamp in the
script file. Similarly, we will run another script file for recording the audio
using USB Microphone for time interval of 5 minutes and store it on the
external memory again with timestamp and this file will have format of
wav.
This completes the operation of our model and the complete code
execution ends after this. And then we check the output of the execution.
That is the video and audio file stored on the desktop. So, this setup
serves the purpose of surveillance in various areas.
It is much similar to the concept added to the smart door stopper as
described by the Professor Den during his guest lecture on the Patent.
We also added an extra feature to our project by adding few commands
in code which will send a mail to the person whose email address is
entered in the script file as soon the event is triggered. The person gets
a mail notification which makes him aware of the event taking place. This
can be employed during the practical application of this model for
surveillance or accident detection purpose in the future.You can refer the </br>
● Led.py : It detects if led is ON or OFF.The gpio mode is set as
BCM and pin 14 as input pin.if led is turned ON it calls the
subprocess av.sh and the loop breaks else it does nothing. </br>
● av.sh: It calls the stepper.py, video.sh , audio.sh simultaneously.
● stepper.py: This python file gives the command to stepper motor
to rotate. </br>
● newvideo.sh : This shell script gives the command to pi camera to
start recording video for 2 minutes.The video recording takes place
at 30 frames per seconds.It then converts the recorded video from
h264 format to mp4 format and saves the video with date and time. </br>
● newaudio.sh:This shell script gives the command to microphone
to start recording audio for 5 minutes.It creates a cd quality wav
file and saves the file with date and time </br>
