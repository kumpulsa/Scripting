#Task03-02
# Create a script that prints a number of objects in a active directory.
# Script must consist a function called count_objects. Function must have one local variable, 
# that will hold the actual value, before it's printed to the user.
# Hints: Function has a print functionality. wc command might be useful.

#!/bin/bash
count_object(){

local fileCount=0

for f in $(ls);
do
 # echo $f ;
  ((fileCount++))
 # echo $fileCount
done;

echo "there are $fileCount object"
}


count_object
