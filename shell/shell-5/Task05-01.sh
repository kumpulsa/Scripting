# Create a script that asks values from the user until user decides to end the script.
# Given values are added to the end of file called animal.txt
# Finally script prints every value from the file.

#!/bin/bash
valid=true
valueList=()

while [ $valid ]
do
  read -p "Give a value. exit stops the script " value

  if [ "$value" = "exit" ]
  then
    break
  else
    #echo "$value"
    valueList+=("$value")
  fi
done

for key in ${valueList[@]}
do
  echo ${key} >> animal.txt
done 

cat animal.txt
