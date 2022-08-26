# Task05
# PowerShell includes many kind of commands: alias, cmdlets, function and application. 
# Create a script that counts how many application PowerShell returns.

$currentProcesses = (Get-Process).Count

#result

Write-Host("You Got $currentProcesses applications in Powershell")