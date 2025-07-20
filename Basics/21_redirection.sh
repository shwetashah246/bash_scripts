#!/bin/bash

DIR="/content/Basics"
FILE="$DIR/21_op.log"

# >
echo "> overrides content in file"
echo "This is the first line." > "$FILE"
echo "This overwrites the file." > "$FILE"
echo ""

# >>
echo ">> appends content to the file"
echo "This appends a line." >> "$FILE"
echo "Another appended line." >> "$FILE"
echo ""

echo "Done writing to $FILE."
