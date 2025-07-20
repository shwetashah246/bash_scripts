#!/bin/bash

echo "Loading Files into Arrays with mapfile and readarray:"
echo ""

file="/etc/passwd"

declare -a pass_array
mapfile pass_array < "$file"

# Key Concepts
# - declare -a pass_array: Declares an indexed array named pass_array
# - mapfile pass_array < "$1":
# - Reads the file (provided as first argument) line by line
# - Each line becomes an element in the array
# - echo "${pass_array[@]}": Prints all elements (lines) in the array

# Print first line
echo "Print first line"
echo "${pass_array[0]}"
echo ""

# Loop through all lines
echo "Loop through all lines:"
for line in "${pass_array[@]}"; do
  echo "$line"
done
echo ""

# Read lines into an array
readarray names <<< $'Apple\nBanana\nCherry'

# Print each element
echo "Print each element:"
for name in "${names[@]}"; do
  echo "Fruit -> $name"
done

# mapfile or readarray:	Load file lines into array
# declare -a:	Declare indexed array