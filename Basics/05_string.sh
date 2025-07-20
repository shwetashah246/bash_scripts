#!/bin/bash

echo "Practices string comparisons and sort order:"
echo ""

str1="apple"
str2="banana"

if [[ "$str1" < "$str2" ]]; then
  echo "$str1 comes before $str2"
else
  echo "$str2 comes before $str1"
fi
