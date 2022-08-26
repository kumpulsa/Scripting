#in the case that database will return null we will skip
$users = 'Al', 'Ben','null' ,'Calle', 'Dave'
for ($i = 0; $i -lt $users.Count; $i++) {
  if($users[$i] -eq 'null')
  {
    Write-Output("Illegal input, account is not created")
    continue
  }
  Write-Output("I will do an account for " + $users[$i], $i)
}