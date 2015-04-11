#!/bin/bash
cd '~'
import -window root temp.jpg
total=$(ls -1 | wc -l)
total=$((total + 1))
mv temp.jpg $total



