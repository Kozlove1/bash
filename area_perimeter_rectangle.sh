#!/bin/bash
if [ "$#" -ne 2 ]; then
echo "Provide two arguments: length and width"
exit 1
fi

length=$1 
width=$2

area=$(echo "$length * $width" | bc)
perimeter=$(echo "2 * ($length + $width)" | bc)

echo "Прямоугольник с длиной $length и шириной $width:"
echo "Площадь: $area"
echo "Периметр: $perimeter" 


