# Automatic-AV-capture-Raspberry

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
