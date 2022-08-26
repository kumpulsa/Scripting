$names = 'Jack', 'Jill', 'jake'
foreach ($name in $names) {
$hello = "Hello $name"
$hello
}

Write-Host(" ")
#Change letters to UpperCase
#Cloning $names array
$namesUpperCase = $names
$namesUpperCase.ForEach("ToUpper")


Write-Host(" ")
$int = @(1..5)
$int.ForEach({$_ * $_})

Write-Host(" ")


$users = 'Al', 'Ben', 'Calle', 'Dave'
for ($i = 0; $i -lt $users.Count; $i++) {
  Write-Output("I will do an account for " + $users[$i])
}

for ($i = 1; $i -lt 5; $i++) {
    Write-Output "Sleeping for $i seconds"
    Start-Sleep -Seconds $i
  }