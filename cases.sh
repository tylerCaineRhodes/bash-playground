#! /usr/local/bin/bash

# exit status -- $? ex: echo $?  (0 is good, 1 is bad)

echo "Select an option... "
echo "type 1 do A"
echo "type 2 do B"
echo "type 3 do C"
echo "type 4 do D"

echo "type a character "
read char
case $char in
  [1-3] | [7-9])
    echo "you typed a number between 1-3 or 7-9 "
    ;;
  [0-9])
    echo "you typed a number "
    ;;
  1[2-8])
    echo "you typed a number between 12 and 18 "
    ;;
  *.txt)
    echo "this is a txt file "
    ;;
  [a-z])
    echo "you tuped a lower case letter "
    ;;
  [A-Z])
    echo "you tuped an upper case letter "
    ;;
  *)
    echo "NONE of the above"
    ;;
esac
