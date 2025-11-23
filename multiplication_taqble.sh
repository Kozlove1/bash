#!/bin/bash

if [ -z $1 ]; then
echo "Provide the argument"
exit 1
else

num=$1

echo -e "$(( num * 1 ))\n$(( num * 2 ))\n$(( num * 3 ))\n$(( num * 4 ))\n$(( num * 5 ))\n$(( num * 6 ))\n$(( num * 7 ))\n$(( num * 8 ))\n$(( num * 9 ))"
fi 
