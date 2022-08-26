#Task03-01
# Create a script that takes one parameter: foldername. 
# Check if the given folder exist. If it exist, first show how many files 
# are in the folder and then list filenames. If the folder does not exist, 
# the script will show a message: "Sorry, {foldername} does not exist.".
# testin folder 'C:\Users\sari\Documents\ICT\testikansio\xxx'
param(
    [string]$folder
)


#Testing if folder excist

$folderExist = Test-Path $folder


if ($folderExist -eq $true)
{
   #storing files in variable
   $files = Get-ChildItem -File -Path $folder
   
   #counting files
   $filesCount = ($files| Measure-Object).count


   Write-Host "$filesCount files in the folder $folder"

   #printing files in format table
   $files | Format-Table Name
}
else 
{
    Write-Host "Sorry, Folder does not exist"
}