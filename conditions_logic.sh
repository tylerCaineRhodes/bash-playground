#! /usr/local/bin/bash

read -p "How old are you? " age

if [ $age -lt 0 -o $age -gt 200 ]; then
  echo "Number not Acceptable"
  exit
fi

if [ $age -lt 74 -a $age -gt 26 ]; then
  echo "you are between 26 and 64"
  exit
fi

echo "let us continue"

# if [[ $age < 0 || $age > 200  ]]; then
  # echo "Number not Acceptable"
  # exit
# fi
