#! /usr/local/bin/bash

read -p "Type something: " str

# this gets an error if there are multiple strings passed
if [ -z $str ]; then
  echo "this is an empty string"
  exit
fi

# this solution doesn't have the error - "${str}"
# if [ -z "$str" ]; then
  # echo "this is an empty string"
  # exit
# fi

echo "string was not empty!"


exit

echo "hello"

if [ "abcd" == "abcd" ]; then
  echo "EQUAL !"
fi

echo "moving on"

echo "_________"

if [ "abcd" != "aBcd" ]; then
  echo "NOT EQUAL !"
fi

echo "end"
