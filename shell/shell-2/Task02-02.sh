# Task02-02
# Write a shell script that checks if the file /etc/hosts exists.
# If the file exists, script prints the outcome: /etc/hosts available.
# Also check can you write in the file.
# Script prints the outcome: You have permission to edit the file
# OR you dont have permission to edit the file

#!/bin/bash
if [ -f "/etc/hosts" ]
    then 
        echo "/etc/hosts available"
        if [ -w /etc/hosts ]
        then
            echo "You have permission to edit the file"
        else
            echo "You don't have permission to edit the file"
        fi
else
    echo "File does not exist"
fi
