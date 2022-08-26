# Task04-01
# Create a script that asks URL from the user and a function that tries to ping it with a 1 package.
# If ping is successfull, return a exit code 0.
# If not, return a exit code 1.
# Based on the exit code that the function returned, print outcome to user.

get_url (){
  read -p "Give an url: " url

  echo $url
  ping -c 1 $url

  if [ $? -eq 0  ]
  then
    echo "1 package sent succesfully"
    return 0
  else
    echo "something went wrong, try again."
    return 1
  fi
}

get_url
echo $?
