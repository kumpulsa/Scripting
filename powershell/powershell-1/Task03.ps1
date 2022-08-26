# Task03
# Ask two integers from user, and return addition, subtraction, multiplication and division of numbers.


# asking integers from user
$int1 = Read-Host("Please, give first integer ")
$int2 = Read-Host("Please, give second integer: ")

#User input is string
#User input is string  --> casting string to int
$int1 = [int]($int1)
$int2 = [int]($int2)



#result
Write-Host("Sum is", ($int1+$int2))
Write-Host("Subtraction is", ($int1-$int2))
Write-Host("Multiplication is", ($int1*$int2))
Write-Host("Division is", ($int1/$int2))