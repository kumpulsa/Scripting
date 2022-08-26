# Task02-03
# Create a script that returns a type of objects given (file or directory or something else).
# User can give unlimited number of paths using the commandline arguments.
# Every object type is printed on the own line.

#!/bin/bash/

for i in "$@"; do
if [ -d $i ]
    then
        echo "$i is a folder"
    else
        filetype = $(file -b $i)
	echo $filetype
    fi
done

#    filetype=$(file -b $i)
#    echo "filetype is ${filetype}"
#    if [ -f $i ]
#    then
#        echo "$i is file"
#    elif [ -d $i ]
#    then
#        echo "$i is direcotry"
#    fi
#    #printf '%s\n' "$i"
#done

