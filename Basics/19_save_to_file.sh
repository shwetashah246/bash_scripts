#!/bin/bash

# A safe and basic script to save user input to a file

echo "Enter a filename to save your data:"
read -r filename

# Check if the file already exists
if [ -f "$filename" ]; then
  echo "File '$filename' already exists."
  echo "Do you want to overwrite (o), append (a), or cancel (c)?"
  read -r choice

  case "$choice" in
    o|O)
      echo "Overwriting file..."
      : > "$filename"  # Safely truncate file
      ;;
    a|A)
      echo "Appending to file..."
      ;;
    c|C)
      echo "Canceled."
      exit 0
      ;;
    *)
      echo "Invalid choice."
      exit 1
      ;;
  esac
fi

# Collect user input
echo "Enter the content you want to save (Ctrl+D to end):"
cat >> "$filename"

# Set safe permissions (optional)
chmod 600 "$filename"

echo "Data saved to '$filename' safely."
