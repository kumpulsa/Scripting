#Task 01-04
# Create a script that copies the given file to a path provided by the user. 
# So both paths should be asked from the user.
# Finally script prints: "copied the "original file" to "given path"!".

echo "Give a filename"
read FILENAME

echo "where would you like to copy the file?"
read FILEPATH

FILE="${FILEPATH}${FILENAME}"

cp $FILENAME $FILE

echo "copied the ${FILENAME} to ${FILEPATH}"

dir ${FILEPATH}
