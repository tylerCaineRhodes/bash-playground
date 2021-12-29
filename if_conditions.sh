#! /usr/local/bin/bash

########## Files ##########
# -o             ||
# -a             &&
# -e             exist?
# -d             is_directory?
# -r             readable?
# -w             writable?
# -x             executable?
# -s             not_empty?
# -f             is_file?
# !              not
read -p "dive me a filename " myfile

if [ -e "$myfile" ]; then
  echo "the file exists "
fi

if [ -d "$myfile" ]; then
  echo "the file exists and is a directory "
fi

# regular file ( not directory, not link, etc..)
if [ -f "$myfile" ]; then
  echo "this file exists and is a regular file"
fi

if [ -s "$myfile" ]; then
  echo "this file exists and has a length > 0"
fi
########## Files ##########



########## Numbers ##########
# 3 -eq 3       3 == 3
# 3 -ne 4       3 != 4
# 3 -gt 1       3 > 1
# 3 -lt 7       3 < 7
# 3 -ge 3       3 >= 3
# 3 -le 3       3 <= 3
read -p "give me a number " num

# number equal to 18
if [ $num -eq 18 ]; then
  echo "It is 18"
else
  echo "It is not 18"
fi

# number not equal to 18
if [ $num -ne 18 ]; then
  echo "It is not 18"
else
  echo "It is 18"
fi

# number lower than 18
if [ $num -lt 18 ]; then
  echo "It is lower than 18"
else
  echo "It is not lower than 18"
fi
########## Numbers ##########










########## Strings ##########
# -o             ||
# -a             &&
# -z             empty? (can only be used for strings)
# -n             non_empty (can only be used for strings)
# -s             non_empty?
# !              not

read -p "say something to greet me! " d

if [ "$d" == "hello" ]; then
  echo "hello to you!"
elif [ "$d" == "good morning" ]; then
  echo "good morning to you"
elif [ "$d" == "bye" ]; then
  echo "bye to you"
else
  echo "have a nice day anyway..."
fi

if [ -z "$d" ]; then
  echo "empty string (using '-z')"
fi

if [ -n "$d" ]; then
  echo "non empty string (using '-n')"
fi

if [ "$d" != "hello" ]; then
  echo "not hello :("
fi

if [ ! -z "$d" ]; then
  echo "NOT empty string (using '!')"
fi
########## Strings ##########



