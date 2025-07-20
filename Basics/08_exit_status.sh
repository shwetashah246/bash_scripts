#!/bin/bash

ls /etc/passwd &>/dev/null
if [ $? -eq 0 ]; then
  echo "File exists."
else
  echo "File does not exist."
fi
