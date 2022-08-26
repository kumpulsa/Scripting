#task01-02 
# Create a script that creates a new file in user's home directory.
# Script asks a new filename from the user and adds current date as an suffix to a filename (Y-M-D).

#!/bin/bash
read -p "Give filename, please: " filename
today=$(date "+%Y-%m-%d")
touch ${HOME}/${filename}.${today}
ls -la $HOME
