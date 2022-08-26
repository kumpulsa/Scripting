# Task 01
# Create a script that writes current logged username and current date to console.

#formatting date 
$today = Get-Date -Format "dd.M.yyyy" 

#$today

#current logged username
$username = (Get-ChildItem Env:\USERNAME).Value

#$username


#result
Write-Host("Logged username is ", $username, " and today is ", $today)