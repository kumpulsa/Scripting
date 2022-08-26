param(
    [string]$folder
)


$myHome = 'C:\Users\sari\Documents\ICT\testikansio'


#Testing if folder excist

$folderExist = Test-Path $myHome\$folder

if ($folderExist -eq $true){
   $files = Get-ChildItem
   
   $filesCount = (Get-ChildItem -File | Measure-Object).count


   Write-Host "$filesCount the folder $folder"

   $files | Format-Table Name
}
else {
    Write-Host "Sorry, Folder does not exist"
}