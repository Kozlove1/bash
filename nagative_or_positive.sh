#!/bin/bash

if [ "$#" -ne 1 ]; then
echo "Provide argument"
exit 1
fi

num=$1

if [ "$num" -lt 0 ]; then
echo "$num negative"
else
echo "$num positive"
fi


