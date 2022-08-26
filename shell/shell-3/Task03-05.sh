#task02-05
#create script that mimics sipmle calculator
#at first script asks the operation from user (-,+,*,/)
#script asks two values and outcome is printed to the user
#script execution stops when the user selects "exit" operation

#!/bin/bash

operation=""

until [ $operation = "exit" ]
do
add(){
  sum=$(( $num1+$num2 ))
  echo "the sum is ${sum}"
}

subs(){
  substraction=$(( $num1 - $num2  ))
  echo "the substraction is ${substraction}"
}

multi(){
  multiplication=$(( $num1 * $num2 ))
  echo "the multiplication is ${multiplication}"
}

divi(){
  division=$(( $num1 / $num2 ))
  echo "the division is ${division}"
}


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
    add
  elif [ "$operation" = "-" ]
  then
    subs
  elif [ "$operation" = "x" ]
  then
   multi
  elif [ "$operation" = "/" ]
  then
   divi
  fi

done


