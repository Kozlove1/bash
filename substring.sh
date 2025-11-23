#!/bin/bash

if [ "$#" -lt 1 ]; then
echo "$0 provide one argument"
fi

main_string="$1"

read -p "Provide substring:" substring

if [[ "$main_string" == *"$substring"* ]]; then
    echo "--------------------------------------------------"
    echo "✅ Строка СОДЕРЖИТ подстроку."
    echo "Основная строка: '$main_string'"
    echo "Подстрока: '$substring'"
    echo "--------------------------------------------------"
else
    echo "--------------------------------------------------"
    echo "❌ Строка НЕ СОДЕРЖИТ подстроку."
    echo "Основная строка: '$main_string'"
    echo "Подстрока: '$substring'"
    echo "--------------------------------------------------"
fi


