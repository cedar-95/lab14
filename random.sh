#!/bin/bash
echo "Студент: Чжу Ино"
for ((i=0; i<20; i++)); do
    idx=$(( RANDOM % 26 ))
    printf "\\$(printf "%03o" $((97+idx)))"
done
echo
