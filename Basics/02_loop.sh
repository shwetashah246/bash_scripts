#!/bin/bash

echo "Practices for, while, until, IFS :"
echo ""

echo "For loop:"
for i in {1..5}; do
  echo "Iteration $i"
done

echo ""
echo "While loop, count $i till 5:"
i=1
while [[ $i -le 5 ]]; do
  echo "i = $i"
  ((i++))
done

# is a standard file on Unix/Linux systems that contains user account information
# format, separated by : 
#eg: username:password:UID:GID:comment/home/full name:home_directory:shell

readfile="/etc/passwd"
echo ""
echo "While loop reading file $readfile:"
while IFS= read -r LINE; do
  echo "$LINE" | sed 's/:/ /g'
done < "$readfile"

# A common way to read files line by line in Bash is using a while read loop. 
# This is efficient and handles spacing better than a for loop.

# Key Concepts
# - IFS=: Clears the Internal Field Separator so the line is not split by default characters (spaces, tabs).
# - read -r: Reads the line as-is, preserving backslashes.
# - "$1": Refers to the first positional argument, i.e., the input file.
# - sed 's/:/ /g': Replaces all colons in each line with spaces for display.

echo ""
echo "While loop reading file and Only username and shell are printed:"
while IFS=: read -r user pass uid gid gecos home shell; do
  echo "$user $shell"
done < "$readfile"

# Enhancing the Script – Parse Fields into Variables
# You can load each colon-separated field into its own variable:
# This breaks each line (like /etc/passwd) into individual fields using : as the delimiter.

# | Component     | Description                                 |
# | ------------- | ------------------------------------------- |
# | `while read`  | Reads file line by line                     |
# | `IFS`         | Controls how the line is split              |
# | `-r`          | Prevents backslash interpretation           |
# | `< "$1"`      | Redirects the input file to the loop        |
# | `sed`         | Allows simple transformations on the line   |
# | Field parsing | Load structured fields into named variables |
