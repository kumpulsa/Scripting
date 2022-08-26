# Task02
# Create a function named dirf2 that show Name, Length, 
# LastWriteTime properties of files with given extension in user's home folder. 
# The extension is like .txt or .csv, and it has been given as parameter. 
# Run the function to prove that it works.

function dirf2
{
    param(
        [string]$extension
    )
    
    $extension
    $filePath =  '.'+$extension    


    $files = Get-ChildItem $HOME -File | Where-Object {$_.Extension -eq $filePath } 
    
    $files | Sort-Object LastWriteTime | Format-Table Name, Length, LastWriteTime     
}

   