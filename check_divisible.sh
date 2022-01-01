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

function is_divisible() {
  true_count=0

  if [ $(($1 % 2)) -eq 0 ]; then
    echo "$1 is divisible by 2!"
    true_count=$(( true_count+=1 ))
  fi

  if [ $(($1 % 3)) -eq 0 ]; then
    echo "$1 is divisible by 3!"
    true_count=$(( true_count+=1 ))
  fi

  if [ $(($1 % 5)) -eq 0 ]; then
    echo "$1 is divisible by 5!"
    true_count=$(( true_count+=1 ))
  fi

  if [ $true_count -eq 0 ]; then
    echo "$1 is not divisible by 2, 3, or 5"
  fi
}

function is_better_divisible() {
  was_divided=1

  for divider in {2,3,5}
  do
    local remainder=$(( $1 % $divider ))
    if [ $remainder -eq 0 ]; then
      echo "$1 is divisible by $divider"
      was_divided=0
    fi
  done

  if [ $was_divided -eq 1 ]; then
    echo "$1 is not divisible by 2, 3, or 5"
    return $was_divided
  else
    return $was_divided
  fi
}

read -p "Number to check: " number

divisible $number
