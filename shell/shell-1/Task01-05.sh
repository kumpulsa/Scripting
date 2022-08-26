#Task01-05
#Create a script that deletes the given files from the users home directory. 
#Files are passed to the script using a command line arguments (3 values).
#(Create a empty files in users home folder to test the functionality).
# Finally script prints: i deleted the following files: x,y,z

#!/bin/bash

rm $1 $2 $3
echo "I deleted following files: $1 $2 $3 "
