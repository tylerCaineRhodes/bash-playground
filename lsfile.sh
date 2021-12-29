#! /usr/local/bin/bash

touch 1.txt 2.txt

ls -l >> 1.txt

read -p "prefix for file no. 1: " fileprefix
mv 1.txt ${fileprefix}1.txt

echo "Done"
