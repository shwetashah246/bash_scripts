#!/bin/bash

# Set the disk usage limit to 10,000 KB (10 MB).
LIMIT=10000
MDIR="users"

#Create folders alice, bob, and charlie inside the users directory.
# -p ensures parent directories are created as needed, and it won’t error if they already exist.
mkdir -p users/{alice,bob,charlie}

dd if=/dev/zero of=users/alice/file1.txt bs=1K count=5 &>/dev/null
dd if=/dev/zero of=users/bob/file1.txt bs=1K count=15 &>/dev/null
dd if=/dev/zero of=users/charlie/file1.txt bs=1K count=3 &>/dev/null

# Create dummy files for each user using dd:
#  - if=/dev/zero: Input from /dev/zero, which generates null bytes.
#  - of=...: Output file path.
#  - bs=1K: Block size is 1 kilobyte.
#  - count=...: How many KB to write.
#  - &>/dev/null: Suppress command output.
# So:
#  - Alice gets 5 KB,
#  - Bob gets 15 KB,
#  - Charlie gets 3 KB file.

cd "$MDIR"

# Loop through all entries (users) in the users folder.
for user in *; do
  SIZE=$(du -s "$user" | awk '{print $1}')
  if [ "$SIZE" -gt "$LIMIT" ]; then
    echo "$user exceeds disk usage limit: $SIZE KB"
  fi
done

# Get the disk usage of each user’s folder in KB:
# du -s "$user": Gets total size of the folder.
# awk '{print $1}': Extracts just the size number.
# echo If the folder size is greater than 10,000 KB...

echo "Check `users` folder"