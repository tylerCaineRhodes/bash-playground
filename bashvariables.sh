#! /usr/local/bin/bash

echo "double digit arguments must be specified this way: ${12}"
echo " this is the number of parameters passed to the program: $#"
echo " this is the current exit code: $?"
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

