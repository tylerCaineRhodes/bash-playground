#! /usr/local/bin/bash

for i in {0..6}
do
  echo "number:   $i"
  sleep 3
done

# temporary end of file
exit

number=1

while [ $number -le 7 ]
do
  echo "number is $number"
  number=$(( number + 4 ))
done

echo " "
echo "bye"
echo "continue...."



for i in ./*
do
  echo "name of file is $i"
done



echo "some lines of code here"

for i in {1,2,3,4}
do
  echo "value: $i"
done


for i in {1..7}
do
  echo "value: $i"
done


for i in {1,"dog",-5,"hello","something","danger",-98}
do

  echo "value: $i"

  if [ $i == "danger" ]; then
    echo "we have danger, stop the loop!"
    break
  fi

done

