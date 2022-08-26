#Task03-04 
# Create a script that takes three parameters: foldername, filename and number. 
# Check first if the given folder, exists. If not, create the folder. 
# After that create as many new files as number says to the folder. 
# Finally return a report how many files has been created, and list the names of the files.

param
(
    [string]$folderName, 
    [string]$fileName,
    [int]$number
)

#checking if foleder exist
$folderExist = Test-Path $folderName

if($folderExist -eq $false)
{
    Write-Host "Folder $folderName does not exist. Creating new folder..."
    New-Item -Name "$folderName" -ItemType "directory"
    Write-Host "`n new folder $folderName created" 
}
else 
{
    Write-Host "folder $folderName exist"
}

#Creating empty array for file names
$newFiles = @()

for($i=0; $i -lt $number; $i++)
{
    #casting $i to string for naming purpose
    $fileNumber = $i.ToString()

    #splitting file name
    $splittedFileName = $fileName.split(".") 

    #creating new file name
    $newfileName = $splittedFileName[0]+$fileNumber+"."+$splittedFileName[1]
    
    #creating file path to new folder
    $filePath = Join-Path $folderName -ChildPath $newfileName

    #creating new file
    New-Item -ItemType "file" -Path $filePath

    #adding created file to array
    $newFiles += $newfileName
}
Write-Host "`nFinal report:"
Write-Host "$number files created. created files are:"
$newFiles
