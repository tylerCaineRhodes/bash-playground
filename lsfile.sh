#! /usr/local/bin/bash

touch 1.txt 2.txt

ls -l >> 1.txt

read -p "prefix for file no. 1: " file_prefix
mv 1.txt ${file_prefix}1.txt

echo "Done"
