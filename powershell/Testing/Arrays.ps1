#Arrays

Write-Host("Define an Array")

#Define array
$myNumbers = 1, 2, 3, 4, 5
$myNumbers

Write-Host("")

Write-Host("Define another Array")
#another way to define array
$myWords = "cat", "sun", "yellow"
$myWords
Write-Host("")


Write-Host("Get specific item in array")
#Get specific element
$firstWord = $myWords[0]
$firstWord
Write-Host("")

Write-Host("adding new element in array")
#adding element
$myNumbers += 6
$myNumbers
Write-Host("")


Write-Host("sorting array")
#sort array 
$newArray = "A", "K", "B", "R", "E", "Z"

$newArray | Sort-Object
Write-Host("")


#length
Write-Host("Length is",$myWords.Length)