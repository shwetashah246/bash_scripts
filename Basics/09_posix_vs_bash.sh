#!/bin/bash

value="abc"

# POSIX-compliant
if [ "$value" = "abc" ]; then
  echo "Using single brackets."
fi

value="abc"
# Bash-specific
if [[ "$value" =~ ^a ]]; then
  echo "Starts with a (double brackets)."
fi