#Create a script that reads cars.csv file.
#File that is read must be given at the script startup as a command line argument.
#Script reads information from the file and prints the values to the user.
i=1

while IFS="," read -r Manufacturer Model Year Color



do
  echo "--- Line ${i}  ---"
  echo "Manufacturer: ${Manufacturer}"
  echo "Model: ${Model}"
  echo "Color: ${Color}"
  echo "Year: ${Year}"
  (( i++))
done < cars.csv
