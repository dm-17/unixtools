#!/bin/bash

# Transform the epoch date in human-readable one

if [ -n $1 ] && [[ "$1" =~ ^[0-9]{8,10}(\.[0-9]{1,6})?$ ]] ; then
        date -d @${1}
else
        echo "*** Error ***: invalid epoch date"
        echo "Syntax is: $0 <epoch date>"
fi
