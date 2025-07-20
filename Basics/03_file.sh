#!/bin/bash

echo "Practices -e, -f, -d, -r, -w, -x, -s"
echo ""

DIR="/content/Basics"
file="$DIR/03_op.log"
touch "$file"

echo ""
echo "-e File Exists Check:"
if [[ -e "$file" ]]; then
  echo "$file exists."
fi

echo ""
echo "-f Is File Check:"
if [[ -f "$file" ]]; then
  echo "$file is a regular file."
fi

echo ""
echo "-s Is File Empty Check:"
if [[ -s "$file" ]]; then
  echo "$file has data."
else
  echo "$file is empty."
fi

rm "$file"
