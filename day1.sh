#!/bin/bash
#http://adventofcode.com/day/

input=$(cat entree.txt)
floor=0
echo $floor
for (( i = 0; i < ${#input}; i++ )); do
  character=${input:$i:1} #on prend le caractére à la position i
  if [[ $character == '(' ]]; then
    floor=$(($floor + 1))
  fi
  if [[ $character == ')' ]]; then
    floor=$(($floor-1))
  fi
  echo $floor;
done

###part two :
echo "\n\n\n"
for (( i = 0; i < ${#input}; i++ )); do
  character=${input:$i:1} #on prend le caractére à la position i
  if [[ $character == '(' ]]; then
    floor=$(($floor + 1))
    if [[ $floor == -1 ]]; then
        echo $i
        exit 0
    fi
  fi
  if [[ $character == ')' ]]; then
    floor=$(($floor-1))
    if [[ $floor == -1 ]]; then
        echo $i
        exit 0
    fi
  fi
 done
