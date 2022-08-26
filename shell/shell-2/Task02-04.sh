#Task02-04
#Craete script to automate user creation. NOTE: no password setup!
#script asks username from the user. Before the user is created, script must 
#echeck if the user with that name exist. 
#use the following syntax in your conditional statement:
#id -u USERNAME. If the command returns "no such user", that equals false!
#new user must have home directory under /home/ directory and default shell as bash

#!/bin/bash/

read -p "Give an username: " username

if id -u $username
then 
  echo "User already exist"
else
  echo "user does not exist"
  # -m create home directory, -s specify default shell
  sudo useradd -m ${username} -s /bin/bash
  #delete password
  sudo passwd -d ${username}
fi
#compgen -u
#something interesting
#id $userName &> /dev/null && { echo "User: $userName, already exists."; exit 1; }
