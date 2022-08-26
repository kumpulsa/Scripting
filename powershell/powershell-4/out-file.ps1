$filu = Join-Path -Path $HOME -ChildPath "temp.txt"
Get-Process | Out-File -FilePath $filu
notepad $filu