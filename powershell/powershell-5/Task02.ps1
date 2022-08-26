#Task02
# Create a script that opens all the given urls to a browser. 
# The script has one parameter filename. The parameter points to 
# a text file where urls are. Check first that the given file exist, 
# then read all lines and open the urls in a browser. 
# If the given file does not exist, the script will show a error message.

param
(
    [string]$filename
)

#Checking if file exist
$currentFolder = $PWD.Path
$filePath = Join-Path $currentFolder -ChildPath $filename
$fileExist = Test-Path $filePath

if($fileExist -eq $true)
{
    $urls = Get-Content $filePath
    foreach($url in $urls)
    {
        Start-Process -FilePath firefox -ArgumentList $url
    }
}
else
{
    Write-Host "File $filename does not exist"
}