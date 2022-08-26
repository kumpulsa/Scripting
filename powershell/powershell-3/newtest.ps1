#Task05
# Create a script that takes two parameters: foldername and newname. 
# Check first if the given folder, exists. 
# If not, show a proper message and quit the script. 
# If the folder exist, count files in the folder, and 
# ask from a user: "All {number} files will be renamed with name {newname}. Yes/No". 
# If the user returns "Yes", rename all files in the folder.

param(
    [string]$folderName,
    [string]$newName
)

#checking if folder exist
$folderExist = Test-Path $folderName

$folderExist

if($folderExist -eq $false)
{
    Write-Host "Folder $folderName does not exist"
    Break
} 
else
{   
    $currentFolder = $pwd
    
    $taskFolder = Join-Path $currentFolder -ChildPath $folderName
    $taskFolder

    #getting all the files
    $files = Get-ChildItem -Path $taskFolder | Where  { $_.PsIsContainer -eq $false} 
    #$files

    
    $filesCount = ($files| Measure-Object).count
    #$filesCount

    $fileNumber = 0

    #Renaming files
    $renameFiles = Read-Host "All $filesCount files will be renamed with $newName. yes/no?"

    if($renameFiles -eq $true)
    {
        
    }
    else 
    {
        Break
    }
    
}