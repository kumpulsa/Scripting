#Task01-03
#Create a script that returns how many objects are in the given directory 
#(do not include hidden files). Directory path is asked from the user.

#!/bin/bash
read -p "Give file path, please: " filePath

#counting object in the folder
fileCount=$(ls $filePath | wc -l)
echo "There are ${fileCount} objects in folder ${filePath} "

