#! /usr/local/bin/bash

string="coolstring"
number=3

if [ $number -gt 2 -a "$string" == "coolstring" ]; then
  echo "conditions passed!"
else
  echo "conditions failed :("
fi

file=cases.sh
if [ -s "$file" -a -x "$file" ]; then
  echo "file conditions passed!"
else
  echo "file conditions failed :("
fi

exit


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

########### Modern use of IF conditions #############
# can use >, <, <=, >=, &&, ||

if [[ $age < 0 || $age > 200  ]]; then
  echo "Number not Acceptable"
  exit
fi

if [[$number > 2 && "$string" == "coolstring" ]]; then
  echo "conditions passed!"
else
  echo "conditions failed :("
fi

if [[ -s "$file" && -x "$file" ]]; then
  echo "file conditions passed!"
else
  echo "file conditions failed :("
fi
