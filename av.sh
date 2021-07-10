#!/bin/bash
duration=300
video_duration=120000
motorduration=120
frames=30
height=480
width=640
rotation=270
camera_rotation=300
while [[ $# -gt 0 ]]
do	
	key=$1
	case $key in
		-d|--duration)	
		let "dd=$2*1000"		
		motorduration=$2
		video_duration=$dd
		duration=$2
		shift 
		shift
		;;
		-fps)
		frames=$2
		shift
		shift
		;;
		-h|--height)
		height=$2
		shift
		shift
		;;
		-w|--width)
		width=$2
		shift
		shift
		;;
		-r|--rotation)
		rotation=$2
		shift
		shift
		;;
		-cr|--cam_rotate)
		camera_rotation=$2
		shift
		shift
		;;
			
		*)
		echo "Unknown arugumets Running with default settings"	
		shift	
		break
		;;
	esac	
done

/home/pi/Desktop/newvideo.sh  -w $width -h $height -fps $frames -rot $rotation -t $video_duration > /dev/null 2>&1 &

/home/pi/Desktop/newaudio.sh $duration> /dev/null 2>&1 & 
/home/pi/Desktop//stepper.py $camera_rotation $motorduration> /dev/null 2>&1 & 
echo 'An event is triggred on Raspberry pi in' $(date) | mail -s "Event triggerred on pi" yourgmail@gmail.com
sleep $duration
echo Video file has been created on Desktop

#mpack -s "test" /home/pi/Desktop/led.py vaibhavdaiict@gmail.com





