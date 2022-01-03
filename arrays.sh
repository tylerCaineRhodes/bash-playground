#! /usr/local/bin/bash

a[0]="ball"
a[1]="one glass"
a[2]=22
a[3]="a pencil"

echo ${a[0]}
echo ${a[3]}

days=(mon tue "we, plus some more words" thu fri)
echo ${days[0]}
echo "day 1: ${days[0]}"
days[3]=33
echo "day 3 after reassignment: ${days[3]}"

for i in {0..4}
do
  echo ${days[$i]}
  # seems to be the same as...
  # echo ${days[i]}
done


echo "All the variables in an array: ${days[@]}"
for i in ${days[@]}
do
  echo $i
done

# use this to iterate normally over an array
echo "All the variables in an array: ${days[@]}"
for i in "${days[@]}"; do echo $i; done

echo "All the variables in an array: ${days[*]}"

for i in ${days[*]}
do
  echo $i
done

# It will consider all of it as a single variable in the
# loop when using `*` with commas
for i in "${days[*]}"; do echo $i; done

# number of elements inside array
b=(10 20 30 hello)
echo "The array's length is: ${#b[@]}"

# finding the indexes that are filled:
c[0]=0
c[3]=hey
c[7]=70
c[2]=20

echo ${c[@]}
echo "The filled indexes are ${!c[@]}"

# push to the end of an array
c+=(90 and END)
echo ${c[@]}
