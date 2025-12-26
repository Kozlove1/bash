#!/bin/bash

read -p "Specify number: " num

multiply_func(){

printf $(( $1 * $2 ))
}

for multiply in {1..9};
do
echo "$( multiply_func $multiply $num )"
done
