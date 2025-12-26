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
