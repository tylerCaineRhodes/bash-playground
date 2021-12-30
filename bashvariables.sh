#! /usr/local/bin/bash

echo "double digit arguments must be specified this way: ${12}"
echo " this is the number of parameters passed to the program: $#"
echo " this is the current exit code: $?"
echo "this is the exact path of the script: $0"
echo "this is the internal field seperator: ---> $IFS <---"

echo "all parameters: $@"
echo "all parameters: $*"
# shift arguments (with optional num)
shift 2

echo "all parameters: $@"
echo "all parameters: $*"

# `source` - runs the script in a current shell instead of a sub-shell


# "$@" IS DIFFERENT FROM "$*" WHEN USING THE DOUBLE QUOTE SYNTAX

# these should be the same ################
for i in $@; do
  echo "$i"
done

for i in $*; do
  echo "$i"
done
########################


# these should be different ################
for i in "$@"; do
  echo "$i"
done

# this will be grouped as one arg
for i in "$*"; do
  echo "$i"
done
########################


### IFS ################
x="aa bb cc dd";

for i in $x
do
  echo $i
done

echo -e "\n"

OLD_IFS=$IFS
IFS="_"

x="aa_bb_cc_dd";

for i in $x
do
  echo $i
done


read a b c d e <<< "hi_there_how_are_you"
echo "a is $a"
echo "b is $b"
echo "c is $c"
echo "d is $d"
echo "e is $e"

IFS=$OLD_IFS

########################
