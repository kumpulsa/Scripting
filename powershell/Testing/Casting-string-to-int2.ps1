#please note that date must be in US style
$a = "12/24/2021"
$b = [datetime]$a
Write-Host("Santa Claus is coming at", $b.DateTime)