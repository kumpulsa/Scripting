# Task04-05
# Create a script that has 3 functions: mk_folder, download_image and change_perm.
# mk_folder function asks a new folder path from the user and creates the folder.
# download_image function downloads the following image to the previously created directory and renames it as a linux-tux.png: image
# change_perm function sets the folder and image permissions in a way that only owner has rights to them (rwx).
# Every possible variable substitution and command execution must be shown in the terminal during the execution.

#!/bin/bash

awesome_function(){

  mk_folder(){
    read -p "give a folder path where to create new directory: " folderpath
    mkdir $folderpath
    download_image
  }

  download_image(){
    url="https://student.labranet.jamk.fi/~pekkju/script/tux.png"
    name="linux-tux.png"
    wget -O ${folderpath}/${name} $url
    change_perm
  }

  change_perm(){
    sudo chmod 700 $folderpath
    sudo chmod 700 ${folderpath}/${name}
  }

  mk_folder
 # download_image
 # change_perm

}

awesome_function
