#! /bin/bash

count=0

for i in ./*
do
  ###### portable shell solution ###############
  if [ -f $i -a "${i: -4}" == ".txt" ]; then
    count=$(( count += 1 ))
  fi
  ###### modern solution ###############
  # if [[ -f $i && $i == *.txt ]]; then
    # count=$(( count += 1 ))
  # fi
done

echo "number of text files: $count "

### simpler solution only works if there are more than 0 txt files ###
number=0

for i in ./*.txt
do
  number=$(( number+1 ))
done

echo "number of text files: $number"

