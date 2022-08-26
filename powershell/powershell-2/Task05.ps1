# Task05
# Create a script that simulates pinging a remote server. 
# It takes two named parameters. The first parameter is IP-address 
# of a server, second how many times the ping is tried. The script 
# also ask the permission to make ping with. Pings are made only if a 
# user says Yes. Give default values for parameters, so if the 
# script will be run without arguments, it will try to ping 192.168.1.1 
# only once. Because ping is blocked in labranet, we simulate only pinging.

param (
  [string]$computer = '192.168.8.1',
  [int]$tries = 1
  )

Write-Host("I will ping address $computer $tries time, okay? ")
$answer = Read-Host "[Y/n]: "

if(($answer -eq "Y") -or ($answer -eq "y")){
    for ($i = 0; $i -lt $tries; $i++)
        {Write-Output("try " + ($i +1) + " to ping: " + $computer)} 
}


