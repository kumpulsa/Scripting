#!/bin/bash

#---file.txt has 2 lines in it: 
#cat
#dog

#---stdin redirect to a variable
variable1=$(< file.txt)
echo ${variable1}
#output: cat dog

#---save stdout to a variable

variable1=$(cat file.txt)
echo ${variable1}
#output: cat dog

#---redirect directly to the desired command

cat file1.txt | grep dog
#or
variable2=$(cat file.txt | grep dog)
echo ${variable2}
#output: dog
