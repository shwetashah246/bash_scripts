#!/bin/bash

FILE="example_output.txt"

echo "This is the first line." > "$FILE"
echo "This overwrites the file." > "$FILE"
echo "This appends a line." >> "$FILE"
echo "Another appended line." >> "$FILE"

echo "Done writing to $FILE."
