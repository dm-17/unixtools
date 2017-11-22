#!/bin/bash

# Convert the human-readable timestamp in epoch format

#echo "The input must match the following pattern:"
#echo "Syntax is: $0 MM/DD/YYYY HH:mm:ss"

# date +%s -d"11/17/2017 08:09:00"

if [ -n $1 ] && [[ $1 =~ ^[01]?[0-9]/[01]?[0-9]/[12][0-9][0-9][0-9] ]]; then
        if [ -n $2 ] && [[ $2 =~ [0-2]{0,1}[0-9]:[0-5]{0,1}[0-9]:[0-5]{0,1}[0-9]$ ]] ; then
                date +%s -d "$1 $2"
                exit
        else echo "*** Error ***: Invalid time format"
        fi
else echo "*** Error ***: Invalid date format"
fi

echo "Syntax is: $0 \"MM/DD/YYYY HH:mm:ss\""
exit
