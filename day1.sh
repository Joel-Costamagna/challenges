#!/bin/bash
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
exit 0
