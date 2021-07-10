#!/bin/bash
clear
sleep 2
timestamp=$(date +%e-%m-%g_%I:%M).h264
echo $timestamp
timestamp2=$(date +%e-%m-%g_%I:%M).mp4
raspivid $@ -o /home/pi/Desktop/$timestamp
MP4Box -fps 30 -add /home/pi/Desktop/$timestamp /home/pi/Desktop/$timestamp2
