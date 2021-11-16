#!/bin/bash

arr=($@)

if [[ $# -lt 3 ]]; then
  echo Number of arguments must not be less than three.
  echo e.g. usage: ./sort.sh 10 25 80 55 39
else
  for i in ${arr[*]}; do
    echo -n "$((i)) "
  done
fi
echo
