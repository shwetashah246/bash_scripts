#!/bin/bash
# Arithmetic

a=5
b=3

echo "a = $a, b = $b"
echo "a + b = $((a + b))"
echo "a * b = $((a * b))"

((a++))
echo "After increment: a = $a"
