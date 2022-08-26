# Task04-03
# Create a script that installs the program using apt, based on the user input. (cowsay etc.)
# If the installation is successfull, tell that to the user and exit normally.
# If not, inform user and exit with a code 111.
# Hints: sudo permissions and apt options


install_program(){
  read -p "give program you would like to install: " program

  echo $program

  sudo apt -y  install $program

  if [ $? -eq 0 ]
  then 
    echo "the program was installed successfully"
    exit
  else
    echo "something went wrong during program installation"
    return 111
  fi
}

install_program

echo $?
