#!/bin/bash

echo ""
echo "getopts:"

# getopts is a built-in Bash command that allows you to parse command-line options (like -a, -b, etc.) in a script

# First set of options (e.g., -a)
echo "1) :a example:"
while getopts ":a" opt; do
  case $opt in
    a)
      echo "You passed the -a option"
      ;;
    \?)
      echo "Invalid option: -$OPTARG" >&2
      ;;
  esac
done
echo ""
# getopts ":a" opt
# :a → means it’s expecting an option -a
# opt is the variable where the matched flag is stored
# case $opt in → switch logic based on which flag was passed
# \? → handles invalid options

# Reset OPTIND before reusing getopts
OPTIND=1

# Second set of options (e.g., -c <value>)
echo "2) :c: example:"
while getopts ":c:" opt; do
  case $opt in
    c)
      echo "You passed -c with value: $OPTARG"
      ;;
    :)
      echo "Option -$OPTARG requires an argument." >&2
      exit 1
      ;;
    \?)
      echo "Invalid option: -$OPTARG" >&2
      ;;
  esac
done
echo ""

# :c: → now -c requires an argument, value is needed
# OPTARG → stores the argument passed with the option

# Reset again if needed for further parsing
# Skip parsed options
shift $((OPTIND - 1))
echo "$1 is $1"
echo "$2 is $2"

# | Sym                 | Meaning                                                                         |
# | ------------------- | ------------------------------------------------------------------------------- |
# | `:` (leading colon) | Suppresses default error messages, lets you handle `:)` and `\?` cases manually |
# | `a:`                | Option `-a` requires an argument                                                |
# | `OPTIND=1`          | Resets `getopts` to re-parse from the beginning                                 |
# | `OPTARG`            | Holds the value passed to the current option                                    |

