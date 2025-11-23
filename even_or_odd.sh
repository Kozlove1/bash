#!/bin/bash

# Проверяем количество аргументов
if [ $# -ne 1 ]; then
    echo "Please send one non negative number"
    exit 1
fi

# Получаем аргумент
number=$1

# Проверяем, является ли аргумент числом и неотрицательным
if ! [[ $number =~ ^[0-9]+$ ]]; then
    echo "Please send one non negative number"
    exit 1
fi

# Проверяем четность числа
if [ $((number % 2)) -eq 0 ]; then
    echo "Number $number is even"
else
    echo "Number $number is odd"
fi

