#! /usr/local/bin/bash

number1=10
number2=20

echo "SUM $(( number1 + number2 )) "
echo "PRODUCT $(( number1 * number2 )) "
echo "DIVISION $(( number1 / number2 )) "
echo "REMAINDER $(( number1 % number2 )) "

echo "POWER $(( 3**2 )) "

echo "___________________________"
echo "INCREASE A VARIABLE"

echo "variable is $number1"
echo "$(( number1++ ))"
echo "variable is $number1"


echo "increase the value before printing"
echo "variable is $number1"
echo "$(( ++number1 ))"
echo "variable is $number1"

echo "___________________________"
echo " SHORT WAY INCREASE A VARIABLE"

number1=10
number1=$((number1 + 3))
echo "adding one---$(( number1+=1 ))"
echo "value= $number1"
