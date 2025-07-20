#!/bin/bash
# Here document

DIR="/content/Basics"
file="$DIR/16_op.log"

cat <<EOF > $file
Hello!
This is a multi-line message.
Created using a here document.

- Bash Script
EOF

echo "$file created"
