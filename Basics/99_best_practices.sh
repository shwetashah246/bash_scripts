#!/bin/bash
# Best practices

set -euo pipefail
IFS=$'\n\t'

echo "Using set -euo pipefail for safer scripting"
filename="data.txt"

if [[ -f "$filename" ]]; then
  echo "$filename exists"
else
  echo "$filename does not exist"
fi
