# Task04-02
# Create a script that prints 3 random numbers on the terminal and 
# also generates a syslog message with a correlating number for each random number.
# Log message priority should be user.info.
# Hints: Special variable $RANDOM


#!/bin/bash
for i in {1..3}
do
  newRandom=$(($RANDOM))
  logger -i -p "user.info"  $newRandom
done

#creates 3 random number and creates logger message that includes $randomnumber
#check if log message priority is User.info
