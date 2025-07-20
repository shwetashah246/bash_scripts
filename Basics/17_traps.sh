#!/bin/bash
# Traps and cleanup

cleanup() {
  echo "Cleaning up..."
  rm -f temp_file.txt
  echo "Done."
}

trap cleanup EXIT

echo "Creating temp file..."
touch temp_file.txt

echo "Script running... Press Ctrl+C to trigger trap"
sleep 10
