#!/bin/bash

arr=("$@")

if [ $# -eq 0 ]; then
  echo Usage: ./sort.sh 3 2 1
else
  for arg in "${arr[@]}"; do
    echo $arg
  done
fi
