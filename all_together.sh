#!/bin/bash
current_date=$(date)
day_of_the_week=$(date +"%A")
date_of_the_week=$(./date_output.sh)

echo "Привет, какой сегодня день недели?"
echo $day_of_the_week
echo "Уже $day_of_the_week"
echo "Какое сегодня число?"
echo $date_of_the_week
echo "Не думал что $day_of_the_week будет $date_of_the_week числа"
echo "Я считаю что сегодня $current_date"