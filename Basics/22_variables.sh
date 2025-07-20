
echo "Bash Variable Scope:"
echo ""

echo "1) Global Environment Variables: export"
# Visible system-wide (to the OS and all shells)
# Set in startup scripts like:
#  - /etc/profile, /etc/bashrc (system-wide)
#  - ~/.bash_profile, ~/.bashrc (user-specific)
# Use export to make variables available to child processes

export MY_VAR="hello"
echo $MY_VAR
echo ""

echo "2) Script-Level Variables: "
# Default scope when you create a variable in a script
# Accessible to any part of the same script (functions, commands, etc.)

NAME="Adam"
echo $NAME
echo ""

echo "3) Exported Variables to Subprocesses"
# Variables from the script that are made available to subshells or child processes
# Use export to share with subprocesses

export GREETING="Hi"
bash -c 'echo $GREETING'
echo ""

echo "4) Local Variables (Inside Functions)"
# Only accessible within the function or code block they are defined in
# Use the local keyword inside functions

TEMP="outside function"

my_function() {
  local TEMP="inside function"
  echo "In function: $TEMP"
}

echo "Before function: $TEMP"
my_function
echo "After function: $TEMP"


# Common Pitfall

# Bash does not isolate variable scope by default, leading to accidental variable overrides if local or export is not used correctly.
# Be deliberate with local and export to avoid unexpected behavior.

