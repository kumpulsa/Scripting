$files = Get-ChildItem | ForEach-Object {Write-Host "you got a file named $_"}

$fileCount = $files.Count

$fileCount