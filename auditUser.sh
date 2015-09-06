#!/bin/bash

# This file is part of User-screen-auditing.
# User-screen-auditing is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License version 3
# as published by the Free Software Foundation.
#
# User-screen-auditing is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.  <http://www.gnu.org/licenses/>
#
# Author(s):
# © 2015 Kasra Madadipouya <kasra@madadipouya.com>

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
