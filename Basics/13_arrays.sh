#!/bin/bash
# Arrays

fruits=("apple" "banana" "cherry")

for fruit in "${fruits[@]}"; do
  echo "Fruit: $fruit"
done
