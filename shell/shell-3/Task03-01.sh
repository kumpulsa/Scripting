#Create a script that asks values from the user until user types exit. 
#All the values are saved in array. Finally script prints out the whole array 
#(line by line) using the following syntax: index: value

#!/bin/bash

newArray=()
valid=true

while [ $valid ]
do
  read -p "Give a value: " value

  if [ "$value" = "exit" ]
  then
    break
  else
    #echo "$value"
    newArray+=("$value")
  fi
done

for key in ${!newArray[@]}
do
  echo "$key : ${newArray[$key]}"
done
