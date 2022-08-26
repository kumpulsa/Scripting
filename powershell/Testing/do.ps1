#let's set a number randomly between 2-21
$number = Get-Random -Minimum 2 -Maximum 21
#user will guess as long as she get right value
do {
  $guess = [int](Read-Host "What's your guess?")
  if ($guess -lt $number) {
    Write-Output 'Too low!'
  }
  elseif ($guess -gt $number) {
    Write-Output 'Too high!'
  }
}
until ($guess -eq $number)
#the end
Write-Output("You got it: " + $number)