#!/bin/bash
input=$(cat entree.txt)
floor=0
for (( i = 0; i < ${#input}; i++ )); do
  character=${input:$i:1} #on prend le caractére à la position i
  if [[ character -e '(' ]]; then
    $floor=$(let "$floor+1")
  fi
done
