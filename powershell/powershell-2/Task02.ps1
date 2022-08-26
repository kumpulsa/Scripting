# Task02
# Create a script that counts how many files and folders are in given folder. 
# The script shows the name of the folder and the number of the files.
# test file path: C:\Users\sari

$folder = Read-Host "Please, give the folder to search "
Write-Host(" ")


#Counting files
$files = (Get-ChildItem -Path $folder -File).Count

#counting Directories
$directories = (Get-ChildItem -Path $folder -Directory).Count


#result
Write-Host("$files files and $directories directories found at $folder")
