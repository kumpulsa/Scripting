#!/bin/bash
# Create script that takes two command line arguments
# Script returns the following arithmetic solutions: addition, substraction, multiplication

num1=$1
num2=$2

Addition=$((${num1}+${num2}))
Substraction=$((${num1}-${num2}))
Multiplication=$((${num1}*${num2}))

echo "Sum is: ${Addition}"
echo "Substraction is: ${Substraction}"
echo "Multiplication is: ${Multiplication}"

