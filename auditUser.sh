#!/bin/bash

DELAY="-s"
SECOND=10
LOCATION="-p"
FOLDER_PATH=`pwd`
function capture {
cd $1
TEMP_FILE_NAME="tmp.jpg"
import -window root $TEMP_FILE_NAME
# rename the pictures accordingly
total=$(ls -1 | wc -l)
mv  $TEMP_FILE_NAME $total.jpg
}
if [ 0 -eq $# ]
then
	echo -e "No argument entered!"
	echo -e "Please use -s [second], -p [pics path]"
	echo -e "Default values : -s = 10, -p = pwd, -f = 3"
else
	for (( i=1; i<=$#; i++ )) 
	do
		if [ "${!i}" == $DELAY ]
		then
			i=$((i+1))
			SECOND="${!i}"
		elif [ "${!i}" == $LOCATION ]
		then
			i=$((i+1))
			FOLDER_PATH="${!i}"
		fi
	done
fi
while [ true ]
do
	capture $FOLDER_PATH
	sleep $SECOND
done
