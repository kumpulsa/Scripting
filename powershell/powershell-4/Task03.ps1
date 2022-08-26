#Task03
# Create a script that ask workstation names from an user. 
# The names are asked until the user gives empty input. 
# After that, the script writes all names to a file in user's home folder. 
# The file name is given with the parameter: filename. 
# Finally show a proper message that the file was created succesfully. 
# Please, read about manipulating arrays

param
(
    [string]$fileName
)

#creating paht for file
#$currentFolder = $pwd.Path
#$filePath = Join-Path $currentFolder -ChildPath $filename

#File path to users home folder
$filePath = Join-Path $HOME -ChildPath $filename
$filePath


#Checking if file exist
$fileExist = Test-Path $filePath

if($fileExist -eq $true)
{
     Write-Host "File $fileName already exist"
}
else
{
    Write-Host "File $fileName does not exist. Creating file..."
    New-Item -ItemType "file" -Name $fileName
    Write-Host "`n$filePath created succesfully"
}

#creating empty list for workstations
$newWorkstationList = @()
$workstationName  = "a"

While($workstationName -ne "")
{
    #storing workstation names in array
    $workstationName = Read-host "Give a workstation name, press Enter to quit"
    $newWorkstationList += $workstationName
}

#creating new lines in file
foreach($workstation in $newWorkstationList)
{
    
    Add-Content -Path $filePath -Value $workstation
}