#!/bin/bash

echo "Practices if, [[ ]], if-elif, -z, -n, =, !=, read -p, echo, [[]] v/s [] :"
echo ""

# | Option         | Description                                                      |
# | -------------- | ---------------------------------------------------------------- |
# | `-r`           | Prevents backslash escapes (recommended for raw input)           |
# | `-t` *seconds* | Sets a timeout for input                                         |
# | `-s`           | Silent mode – input isn't shown on screen (useful for passwords) |
# | `-a`           | Reads words into an array                                        |
# | `-n` *N*       | Reads *N* characters only (no Enter needed)                      |

# | Feature           | Usage Example                               |
# | ----------------- | ------------------------------------------- |
# | Prompt for input  | `read -p "Enter name: " name`               |
# | Silent (password) | `read -s -p "Password: " passwd`            |
# | Timeout           | `read -t 5 var` (times out in 5 seconds)    |
# | Multiple values   | `read a b c` reads 3 space-separated inputs |

# How It Works
# read -p: Prompts the user inline and stores the response in a variable (username)
# The user's input becomes the value of username
# echo then prints the result

# | Test | Meaning                | True When...            |
# | ---- | ---------------------- | ----------------------- |
# | `-z` | Zero length string     | String is **empty**     |
# | `-n` | Non-zero length string | String is **not empty** |

# | Feature                        | `[ ]`                 | `[[ ]]`             |    |     |
# | ------------------------------ | --------------------- | ------------------- | -- | --- |
# | POSIX compliant                | Yes                   | No                  |    |     |
# | Word splitting/globbing        | Happens (need quotes) | Does not happen     |    |     |
# | Supports regex                 | No                    | Yes (`=~` operator) |    |     |
# | Logical operators (`&&`, \`    |                       | \`)                 | No | Yes |
# | Recommended for modern scripts | Sometimes             | Usually better      |    |     |

# Use [[ ]] in Bash scripts for safer and more powerful tests, but 
# use [ ] if you want maximum portability across shells.

echo -n "What car do you drive? "
read car
echo "You drive a $car."

echo ""
echo "Input Multiple Input Prompt"
read -p "Enter first, last, and age: " first last age
echo "Hello $first $last, age: $age"

echo ""
echo "Check -n:"
username=""
if [[ -n "$username" ]]; then
  echo "Username is: $username"
else
  echo "Username is empty"
fi

echo ""
echo "Check -p"
read -p "Enter your Username: " username

echo ""
echo "Check -z:"
if [[ -z "$username" ]]; then
  echo "You entered nothing."
else
  echo "Username is: $username"
fi

echo ""
echo "Check string comparison:"
if [[ "$username" == "admin" ]]; then
  echo "Welcome admin!"
else
  echo "Access denied."
fi

echo ""
echo "if-elif check:"
name="Alice"
if [ "$name" = "Alice" ]; then
  echo "Hello, Alice!"
elif [ "$name" = "Bob" ]; then
  echo "Hey Bob!"
else
  echo "Who are you?"
fi

echo ""
echo "regex match operator check:"
if [[ "$name" =~ ^A ]]; then
  echo "$name starts with an A"
fi

# [[ ... ]] is the Bash conditional expression (more powerful than single brackets).
# "$name" is the variable being tested.
# =~ ^A is a regex match operator.
# ^A means the string starts with the letter A.
# So this condition checks if the variable name starts with the letter A.
# If true, it prints:
# "Alice starts with an A" (or whatever the value of name is).
