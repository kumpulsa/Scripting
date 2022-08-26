#"Task 02
# Ask from user his/her firstname, lastname and groupcode. Save them to 
# variables. After that show the following info in console.


#user input
$fname = Read-Host "Please, give your firstname: "
$lname = Read-Host "Please, give your lastname: "
$groupcode = Read-Host "Please, give your groupcode: "



#Result

Write-Host("Welcome to course: ", $lname, $fname, $groupcode)