#!/bin/bash

if [[ -p /dev/stdin ]]; then
  while IFS= read -r LINE; do
    pipearray+=( "$LINE" )
  done
  echo "${pipearray[@]}"
fi

# How It Works:
# - [[ -p /dev/stdin ]]: Checks if input is being piped (i.e., stdin is a pipe)
# - while IFS= read -r LINE: Reads piped input line by line into variable LINE
# - pipearray+=( "$LINE" ): Appends each line to an array
# - echo "${pipearray[@]}": Prints all collected lines after the loop

# | Component        | Purpose                          |
# | ---------------- | -------------------------------- |
# | `-p /dev/stdin`  | Detects if input is piped        |
# | `read -r LINE`   | Reads line-by-line input         |
# | `pipearray+=( )` | Stores each line into an array   |
# | `echo` or loop   | Processes or displays array data |

# Run It:
# Without a pipe:
#   ./readpipe.sh
# Nothing happens (good! It waits for piped input only)

# With a pipe:
#   cat /etc/passwd | ./readpipe.sh
# Reads the piped content, stores each line in an array, and prints it