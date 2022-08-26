param
(
    [string]$fileName
)


$currentFolder = $pwd.Path

$filePath = Join-Path $currentFolder -ChildPath $filename

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

$fileCount = $newWorkstationList.Count

