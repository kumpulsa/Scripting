#Task02-01
#Create a script that asks a file to remove from the user.
#File is removed if it's a regular file and it's empty, 
#otherwise some kind of error message is printed.

#!/bin/bash/

read -p "Give filename you would like to remov: " filename
if [ -f $filename  ] && [ ! -s $filename ]
then
  rm $filename
  echo "the file is regular file. The file was deleted successfully"
else
 echo "File is not empty, it cannot be deleted "
fi
