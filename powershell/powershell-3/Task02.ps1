# Task03-02
# Create a script that takes two parameters: foldername and filename. 
# Check first if the given folder exist. If the folder exists, 
# check if the file exists in the folder. If true, show a proper message. 
# If it does not exist, show a message: "Sorry, {filename} in the {foldername} does not exist.".
# testing folder "C:\Users\sari\Documents\ICT\testikansio\kansio3" file "a.txt" 

param
(
    [string]$folderName,
    [string]$fileName
)


#checking if folder exist
$folderExist = Test-Path $folderName


if ($folderExist -eq $true)
{

   $filepath = "$folderName\$fileName"
   
   $fileExist = Test-Path -Path $filepath

   if($fileExist -eq $true)
   {
        Write-Host "File $fileName does exist in $folderName"
   }
   else 
   {
   Write-Host "Sorry, $fileName in the $folderName does not exist"
   }

}
else 
{
    Write-Host "Sorry, Folder does not exist"
}

