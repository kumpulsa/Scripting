#task02-05
#create script that mimics sipmle calculator
#at first script asks the operation from user (-,+,*,/)
#script asks two values and outcome is printed to the user
#script execution stops when the user selects "exit" operation

#!/bin/bash

operation=""

until [ $operation = "exit" ]
do
  read -p "give an operation: +, -, , x , /. Exit stops the script: " operation

  if [ "$operation" = "exit" ]
  then
    echo "calculator is closing"
    break
  fi

  read -p "give first number: " num1
  read -p "give second number: " num2

  if [ "$operation" = "+" ]
  then
    sum=$(( $num1+$num2 ))
    echo "the sum is ${sum}"
  elif [ "$operation" = "-" ]
  then
    substraction=$(( $num1 - $num2  ))
    echo "the substraction is ${substraction}"
  elif [ "$operation" = "x" ]
  then
   multiplication=$(( $num1 * $num2 ))
   echo "the multiplication is ${multiplication}"
  elif [ "$operation" = "/" ]
  then
   division=$(( $num1 / $num2 ))
   echo "the division is ${division}"
  fi

done


