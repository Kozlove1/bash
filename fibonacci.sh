#!/bin/bash

read -p "Provide a number (greater than 3): " num

# Проверка, что число больше 3
if (( num <= 3 )); then
    echo "Error: Number must be greater than 3"
    exit 1
fi

# Проверка, что это целое число
if ! [[ "$num" =~ ^[0-9]+$ ]]; then
    echo "Error: Please provide a positive integer"
    exit 1
fi

# Инициализация первых двух чисел Фибоначчи
a=0
b=1

# Выводим первые два числа
echo -n "$a, $b"

# Вычисляем и выводим остальные числа
for (( i=3; i<=num; i++ )); do
    next=$((a + b))
    echo -n ", $next"
    a=$b
    b=$next
done

