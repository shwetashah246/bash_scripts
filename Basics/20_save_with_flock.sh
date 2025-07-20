#!/bin/bash

LOCKFILE="/tmp/20_op.lock"

DIR="/content/Basics"
TARGETFILE="$DIR/20_op.log"

# Prompt user for data
echo "Enter some data to save (Ctrl+D to finish):"
USER_INPUT=$(</dev/stdin)

# Use flock to ensure only one script can write at a time
{
  flock -n 200 || {
    echo "Another process is writing. Try again later."
    exit 1
  }

  echo "Saving to $TARGETFILE..."
  echo "[$(date)] $USER_INPUT" >> "$TARGETFILE"
  echo "Saved successfully."

} 200>"$LOCKFILE"
