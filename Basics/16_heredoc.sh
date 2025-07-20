#!/bin/bash
# Here document

cat <<EOF > message.txt
Hello!
This is a multi-line message.
Created using a here document.

- Bash Script
EOF

echo "message.txt created"
