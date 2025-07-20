#!/bin/bash

# check if the file /etc/passwd exists and is accessible
ls /etc/passwd &>/dev/null

if [ $? -eq 0 ]; then
  echo "File exists."
else
  echo "File does not exist."
fi

# -f checks if a file exists and is a regular file.
# ls /etc/passwd &>/dev/null
#  - This line is silently checking if /etc/passwd is there and can be listed.
# ls  
#  - list the file
# &>/dev/null 
#  - Redirects both stdout and stderr to /dev/null (a “black hole” that discards output).
#  - Prevents any output or error from showing up in the terminal.

# if [ $? -eq 0 ]; then ...
# $?:
#  - Captures the exit status of the previous command (ls /etc/passwd).
#  - 0 means success, anything else means failure.

# [ $? -eq 0 ]:
#  - Tests if the exit code is 0 (i.e., the file exists and is accessible).