# Task05
# Create a script that takes one parameter: foldername. 
# First check that the given folder exist, 
# then write all names of files in the folder to a text file named files.txt. 
# Create the file to user's home folder. If the folder does not exist, 
# the script will show a message: "Sorry, {foldername} does not exist."

param(
    [string]$foldername
)

#checking if folder exist
$folderExist = Test-Path $foldername


if($folderExist -eq $false){
    Write-Host "Sorry, folder $foldername does not exist"
} else {
    #storing folders in variable
    $folderFiles = Get-ChildItem -Path $foldername | Where {$_.PsIsContainer -eq $true}

    #creating empty list for folder's name
    $folderNames = @()

    foreach($folder in $folderFiles){
    $folderNames += $folder.Name

    }
    
    #check if files.txt exist
    $filePath = Join-Path $HOME -ChildPath "files.txt"

    $fileExist = Test-Path $filePath

    if($fileExist -eq $false){
        #creating file
        New-Item -ItemType "file" -Path $filePath       

    } 
     #adding foldernames in file
        Add-Content -Path $filePath -Value $folderNames       
    
    
}


