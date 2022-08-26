#Task03-05
# Create a script that takes two parameters: foldername and newname. 
# Check first if the given folder, exists. 
# If not, show a proper message and quit the script. 
# If the folder exist, count files in the folder, and 
# ask from a user: "All {number} files will be renamed with name {newname}. Yes/No". 
# If the user returns "Yes", rename all files in the folder.

param(
    [string]$foldername, 
    [string]$newName
)

$currentFolder = $pwd.Path
$folderPath = Join-Path $currentFolder -ChildPath $foldername

#Checking if folder exist
$folderExist = Test-Path $foldername


if($folderExist -eq $true)
{
    $files = Get-ChildItem -Path $folderPath | where {$_.PsIsContainer -ne $true }
    $fileCount = $files.Count
    
    $renameFiles = Read-Host "All $fileCount files will be renamed with name $newName. Yes/No"
    $renameFiles = $renameFiles.ToLower()    

    if($renameFiles -eq "yes")
    {
    $fileNumber = 1
     foreach($file in $files)
     {
        #splitting newName
        $splittedName = $newName.Split(".")
        
        #new file name 
        $newFilename = $splittedName[0] + $fileNumber+ "." + $splittedName[1]
        #$newFilename
        $fileNumber += 1

        $filePath = Join-Path $folderPath -ChildPath $file
        
        Rename-Item -Path $filePath -NewName $newFilename
     }
    }
}
else 
{
    Write-Host "Sorry, folder $foldername does not exist"
}
