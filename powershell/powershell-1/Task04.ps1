#Task 04
# Create an array named $names, that includes seven names
# Print Length of array
# Print array
# Print first and last element of array

#Define an array
$names = "Antti", "Maija", "Eero", "Kalle", "Pekka", "Raija", "Kaisa"

#length of array
$length = $names.Count

Write-Host("There are", $length,"names:")
Write-Host("First name is", $names[0], "and the last name is", $names[-1])