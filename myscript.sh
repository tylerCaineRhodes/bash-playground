#! /usr/local/bin/bash

read -p "what is your name? " your_name

echo "hello $your_name"

echo "tell me the path of the file you want to open"

read file_path

open $file_path

echo ------------------*

# this is a comment
