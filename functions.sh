#! /bin/bash


my_function() {
  local var1="eggs"

# variables are global by default
  var2="salad"

  echo "my variable inside the function is: $var1"
}

my_function

echo "Outside: $var1"
echo "Outside: $var2"



exit

my_date() {
  echo "today is: "
  date
  echo "have a greate day!"
  return 16
}

hello_2() {
  echo "hello $1"
  echo "hello also, to $2"
  return 35
}

my_date
echo "return value of my first function is $?"

hello_2 "Tyler" "blahblahblah"
echo "return value of my second function is $?"
