#!/bin/bash
sleep 2
timestamp=$(date +%e-%m-%g_%I:%M).wav
$duration=$2
arecord -D hw:1,0 -d $1 -f cd -q ~/Desktop/$timestamp -c 1

