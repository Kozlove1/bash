#!/bin/bash
if [ -z $1 ] && [ -z $2 ]; then
echo "Provide the arguments"

else
	length=$1 
	width=$2
	
area=$(echo "$length * $width" | bc)

echo "Площадь треугольника с основанием $base и высотой $height равна **$area**."

fi 


