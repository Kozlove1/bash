#! /bin/bash

if [ "$#" -ne 3 ]; then
    echo "Использование: $0 <сторона_a> <сторона_b> <сторона_c>"
    exit 1
fi

a=$1
b=$2
c=$3

if (( $(echo "$a + $b <= $c" | bc -l) )) || 
   (( $(echo "$a + $c <= $b" | bc -l) )) || 
   (( $(echo "$b + $c <= $a" | bc -l) )); then
    echo "Ошибка: Треугольник с такими сторонами не существует (нарушено неравенство треугольника)."
    exit 1
fi

s=$(echo "($a + $b + $c) / 2" | bc)

heron_value=$(echo "$s * ($s - $a) * ($s - $b) * ($s - $c)" | bc)

area=$(echo "scale=4; sqrt($heron_value)" | bc)

echo "Стороны треугольника: a=$a, b=$b, c=$c"
echo "Полупериметр (s): $s"
echo "Площадь треугольника: $area"
