# Task04
# Create a script that ask file names from an user. 
# The names are asked until the user gives empty input. 
# After that, the script creates the files with given names to user's home folder. 
# The script writes the current date and time to the files in the following format 
# 30.9.2021 12.30. Finally show a message that how many files were created succesfully.

$continue = $true
$fileCount = 0
$newFileList = @()

while($continue -eq $true)
{
    #adding new files to array
    $filename = Read-Host "Give a name, press enter to quit"
    
    
    if($filename -ne "")
    {
       $newFileList += $filename
       #checking if file exist
       $filePath = Join-Path -Path $HOME -ChildPath $filename
       
       $fileExist = Test-Path $filePath
       

       if($fileExist -eq $true)
       {
            Continue
       }
       else
       {
            #$createNewFile = Read-Host "Create the file $filename ? yes/no"
            #creating new file
            New-Item -ItemType "file" -Path $filePath
            $fileCount += 1 
            
            # editing file
            $currentDate = Get-Date -Format "dd/MM/yy HH:mm"          
            Add-Content -Path $filePath -Value $currentDate
       }     
       
    }
    else
    {
        $continue = $false
    }
}
Write-Host "$fileCount files were created succesfully" 

