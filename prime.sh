#!/bin/bash

is_prime() {
    local num=$1
    
    # Проверка на числа <= 1
    if (( num <= 1 )); then
        return 1  # не простое
    fi
    
    # 2 - простое число
    if (( num == 2 )); then
        return 0  # простое
    fi
    
    # Четные числа > 2 не простые
    if (( num % 2 == 0 )); then
        return 1  # не простое
    fi
    
    # Проверяем нечетные делители от 3 до sqrt(num)
    local i=3
    while (( i * i <= num )); do
        if (( num % i == 0 )); then
            return 1  # не простое
        fi
        (( i += 2 ))
    done
    
    return 0  # простое
}

read -p "Provide a number: " num

# Проверка, что это целое число
if ! [[ "$num" =~ ^[0-9]+$ ]]; then
    echo "Error: Please provide a positive integer"
    exit 1
fi

# Вызов функции проверки на простое число
if is_prime "$num"; then
    echo "Number $num is prime"
else
    echo "Number $num is not prime"
fi
