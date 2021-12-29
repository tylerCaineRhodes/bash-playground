#! /usr/local/bin/bash


myfunction() {
  local var1="eggs"

# variables are global by default
  var2="salad"

  echo "my variable inside the function is: $var1"
}

myfunction

echo "Outside: $var1"
echo "Outside: $var2"



exit

mydate() {
  echo "today is: "
  date
  echo "have a greate day!"
  return 16
}

hello2() {
  echo "hello $1"
  echo "hello also, to $2"
  return 35
}

mydate
echo "return value of my first function is $?"

hello2 "Tyler" "blahblahblah"
echo "return value of my second function is $?"
