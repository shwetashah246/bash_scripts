#!/bin/bash

LIMIT=10000
MDIR="users"

mkdir -p users/{alice,bob,charlie}

dd if=/dev/zero of=users/alice/file1.txt bs=1K count=5 &>/dev/null
dd if=/dev/zero of=users/bob/file1.txt bs=1K count=15 &>/dev/null
dd if=/dev/zero of=users/charlie/file1.txt bs=1K count=3 &>/dev/null

cd "$MDIR"

for user in *; do
  SIZE=$(du -s "$user" | awk '{print $1}')
  if [ "$SIZE" -gt "$LIMIT" ]; then
    echo "$user exceeds disk usage limit: $SIZE KB"
  fi
done