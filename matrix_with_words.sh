#!/bin/bash

do_matrix_shit(){
  for p in $1/*
  do
    echo $p | md5sum $p

    if [ -d $p ]; then
      do_matrix_shit $p
    fi
  done
}

do_matrix_shit $1
