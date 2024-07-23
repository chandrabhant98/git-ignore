#!/bin/bash

echo "Enter a number"
read number

if [ $number -lt 2 ]; then
  echo "$number is not a prime number."
  exit 1
fi

for ((i=2; i*i<=number; i++)); do
  if [ $((number % i)) -eq 0 ]; then
    echo "$number is not a prime number."
    exit 1
  fi
done

echo "$number is a prime number."

