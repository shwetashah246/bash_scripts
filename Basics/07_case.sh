#!/bin/bash

echo "Enter a fruit name:"
read fruit

case "$fruit" in
  apple)
    echo "Apples are red or green."
    ;;
  banana)
    echo "Bananas are yellow."
    ;;
  *)
    echo "I don't know that fruit."
    ;;
esac