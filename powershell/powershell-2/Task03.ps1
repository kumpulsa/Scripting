# Task 03
# Create a script that takes three parameters. The parameters are strings. 
# The script order the given strings by string length. 
# Test your script at least with four different test runs, like in the picture.

#define parameters
param(
    [string]$color1,
    [string]$color2,
    [string]$color3
)

 $params = $color1, $color2, $color3

 $result =  $params | Sort-Object -Property Length

 Write-Host("Parameters are: " + $params)
 Write-Host("Your ordered words are: " + $result)