#Join-path

#$currentFile = $Script:MyInvocation.MyCommand.Path
#$currentFile

#$currentFolder = Split-Path -Parent $currentFile
#$currentFolder

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


