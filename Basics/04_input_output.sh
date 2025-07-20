#!/bin/bash

echo "Practise read, echo, and redirects, STDIN, STDOUT, STDERR, >, <, 2>, >&2, &>"
echo ""

# Demonstrating STDOUT
echo "Demonstrating STDOUT"
echo "This is standard output"

# Demonstrating STDERR
echo ""
echo "Demonstrating STDERR"
echo "This is an error message" >&2

# Reading from STDIN
echo ""
echo "Reading from STDIN"
echo "Enter your name:"
read name
echo "Hello, $name!"

DIR="/content/Basics"
ipFile="$DIR/04_ip.log"
touch "$ipFile"

opFile="$DIR/04_op.log"
touch "$opFile"

errFile="$DIR/04_error.log"
touch "$errFile"

comFile="$DIR/04_combined.log"
touch "$comFile"

# Reading from a file using stdin
echo -e "\nReading from $ipFile file using stdin:"
echo -e "line 1\nline 2\nline 3" > $ipFile
while read line; do
  echo "Line: $line"
done < $ipFile

# < (COMMAND) is using process substitution, not a real file.
# while read to read from the output of the echo -e command, which is:
# It’s as if you had a temporary file with those three lines, but without creating one.

# Redirecting STDOUT to a file
echo -e "\nRedirecting STDOUT to $opFile"
echo "This goes to $opFile" > $opFile

# Redirecting STDERR to a file
echo -e "\nTrying to list a non-existent file (error goes to $errFile)"
ls nonexistentfile 2> $errFile

# Redirecting both STDOUT and STDERR
echo -e "\nRedirecting both STDOUT and STDERR to $comFile"
(ls /etc/passwd && ls nofile) &> $comFile

# Cleaning up
rm $ipFile

# | Concept       | Description                                    |
# | ------------- | ---------------------------------------------- |
# | `echo "text"` | Writes to `stdout`                             |
# | `>&2`         | Redirects output to `stderr`                   |
# | `read`        | Takes input from `stdin`                       |
# | `< file`      | Redirects file to `stdin`                      |
# | `> file`      | Redirects `stdout` to a file                   |
# | `2> file`     | Redirects `stderr` to a file                   |
# | `&> file`     | Redirects both `stdout and stderr` to a file   |

