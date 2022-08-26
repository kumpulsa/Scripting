# Task03-03
# Create a script that prints a number of objects in a given directory to the user. The path is asked from the user.

#!/bin/bash

count_object(){

read -p "Give a path: " filepath
echo $filepath

local fileCount=0

for f in $(ls ${filepath});
do
 # echo $f ;
  ((fileCount++))
 # echo $fileCount
done;

echo "there are $fileCount objects"
}


count_object
