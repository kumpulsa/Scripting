#casting String to Int

$a = Read-Host("Give an integer")
$a.GetType().Name
$a = [int]$a
$b = $a + 1 
Write-Host("You gave", $a, " and when we add one to it, sum is: ", $b)

