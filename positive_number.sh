#!/bin/bash

read -p "Provide a number:" num

is_positive(){
if (( $1 >= 0 )); then
 echo "Number is positive: $1"
return 0
esle 
 echo "Number is negotive: $1"
return 1
fi
}

is_positive "$num"
