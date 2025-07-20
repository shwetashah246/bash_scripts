#!/bin/bash

echo "Positional arguments allow shell scripts to accept input values, making them act like real command-line tools. They're essential for automation and flexible script behavior."
echo ""

echo '$0 is' "$0"
echo '$1 is' "$1"
echo '$2 is' "$2"
echo '$@ is' "$@"
echo '$* is' "$*"

# $0 → The name (or path) of the script
# $1 → First argument (arg1)
# $2 → Second argument (arg2)
# $@ → All arguments as individual items (preserves spacing when quoted)
# $* → All arguments as a single string (merges all when quoted)

# Summary
# Positional arguments make scripts interactive and dynamic
# $0, $1, $2, $@, and $* help access those inputs
# Use "$@" for loops when you want to handle arguments one by one
# Avoid using unquoted $@ or $* as they can break with spaces