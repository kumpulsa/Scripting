# Task03-03
# Create a script that takes two parameters: foldername and filename. 
# Check first if the given file is in the given folder. 
# If the file exists, show a proper message. 
# If it does not exist, ask from a user "Create the file {filename}? Yes/No". 
# If the user returns "Yes", create the file to the folder.
# testing folder "C:\Users\sari\Documents\ICT\testikansio\kansio3" file "a.txt" 

param
(
    [string]$folderName, 
    [string]$fileName
)

$FilePath = Join-Path $folderName -ChildPath $fileName


#Checking if folder exist
$folderExist = Test-Path $folderName

if($folderExist -eq $true)
{
    #checking if file exist
    $fileExist = Test-Path -Path $FilePath
    
    if($fileExist -eq $true)
    {
        Write-Host "File $fileName does exist in $folderName"
    }
    else
    {
       Write-Host "File $fileName does not exist in $folderName"
       #creating new file
       $createNewFile = Read-Host "Create the file $fileName ? yes/no"
       if(($createNewFile -eq "yes") -or ($createNewFile -eq "Yes"))
       {
            #creating new file
            New-Item -ItemType "file" -Path $FilePath
       }
       Write-Host "`nnew file $fileName created in $folderName"
    }
}
else 
{
    Write-Host "folder does not  exist"
}


