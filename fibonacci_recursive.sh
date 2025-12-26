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


fibonacci() {
    local n=$1

    if (( n == 0 )); then
        echo 0
    elif (( n == 1 )); then
        echo 1
    else

        local fib1=$(fibonacci $((n - 1)))
        local fib2=$(fibonacci $((n - 2)))
        echo $((fib1 + fib2))
    fi
}

for (( i=0; i<num; i++ )); do
    if (( i > 0 )); then
        echo -n ", "
    fi
    echo -n "$(fibonacci $i)"
done


