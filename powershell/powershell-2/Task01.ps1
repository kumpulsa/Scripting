# Task 01
# Create a script that counts how many files are in user's home folder. 
# The script shows the home folder name and the number of the files.

#counting files in loop
$fileCount = 0
Get-ChildItem | ForEach-Object{$fileCount++}

#$fileCount

$filePath = (Get-ChildItem -Path Env:\USERPROFILE).Value 

#$filePath

#result
Write-Host("$fileCount files found at $filePath")