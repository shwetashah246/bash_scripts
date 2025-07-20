#!/bin/bash

echo "Simulates a system task:"
echo ""

echo "Disk Usage Report - $(date)"
echo ""

for user in users/*; do
  size=$(du -s "$user" | awk '{print $1}')
  echo "$user - $size KB"
done
