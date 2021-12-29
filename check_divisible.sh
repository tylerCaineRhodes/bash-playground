#! /usr/local/bin/bash

function divisible() {
  local num=$1
  echo "you wrote $num "

  for i in {2,3,5}
  do
    if [ $(( $num % i )) -eq 0 ]; then
      echo "The number $num is divisible by $i"
    fi
  done
}

function isdivisible() {
  truecount=0

  if [ $(($1 % 2)) -eq 0 ]; then
    echo "$1 is divisible by 2!"
    truecount=$(( truecount+=1 ))
  fi

  if [ $(($1 % 3)) -eq 0 ]; then
    echo "$1 is divisible by 3!"
    truecount=$(( truecount+=1 ))
  fi

  if [ $(($1 % 5)) -eq 0 ]; then
    echo "$1 is divisible by 5!"
    truecount=$(( truecount+=1 ))
  fi

  if [ $truecount -eq 0 ]; then
    echo "$1 is not divisible by 2, 3, or 5"
  fi
}

function isbetterdivisible() {
  wasdivided=1

  for divider in {2,3,5}
  do
    local remainder=$(( $1 % $divider ))
    if [ $remainder -eq 0 ]; then
      echo "$1 is divisible by $divider"
      wasdivided=0
    fi
  done

  if [ $wasdivided -eq 1 ]; then
    echo "$1 is not divisible by 2, 3, or 5"
    return $wasdivided
  else
    return $wasdivided
  fi
}

read -p "Number to check: " number

divisible $number
