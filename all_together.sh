#!/bin/bash

# Упражнение 1: Вывод имени скрипта
echo "Имя скрипта: $0"
echo ""

# Упражнение 2: Обратный порядок аргументов
arg_1=$1
arg_2=$2
arg_3=$3
echo "Аргументы в обратном порядке: $arg_3, $arg_2, $arg_1"
echo ""

# Упражнение 4: Запрос дня недели и числа
echo "Привет, какой сегодня день недели?"
read day_of_week
echo "Уже $day_of_week"
echo ""

echo "Какое сегодня число?"
read date_number
echo "Не думал что $day_of_week будет $date_number числа"
echo ""

# Дополнительно: текущая дата
current_date=$(date)
echo "Я считаю что сегодня $current_date"