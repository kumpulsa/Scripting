# Task05

#script takes two named arguments
#arguments have default values if there are not given
param (
  [string]$name = 'hyyppä',
  [int]$hellos = 1
  )
for ($i = 0; $i -lt $hellos; $i++)
  {Write-Output("hello" + $name)} 