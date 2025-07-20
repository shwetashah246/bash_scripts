#!/bin/bash
# Traps and cleanup

DIR="/content/Basics"
file="$DIR/17_op.log"

cleanup() {
  echo "Cleaning up..."
  rm -f $file
  echo "Done."
}

trap cleanup EXIT

echo "Creating temp file..."
touch $file

echo "Script running... Press Ctrl+C to trigger trap"
sleep 10
