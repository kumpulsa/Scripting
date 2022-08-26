# Task01
# Create a function named dirf that show Name, Length, 
# LastWriteTime properties of all files in user's home folder. 
# Run the function to prove that it works.


function dirf {
    Dir $HOME | Sort-Object LastWriteTime | Format-Table Name, LastWriteTime
}

