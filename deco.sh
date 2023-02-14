#!/bin/bash

ciudad="$1"
media=$(./cmedia.sh "$ciudad")
limite=400

if (( $(echo "$media < $limite" | tr -d '\n') )); then
    echo "La ciudad $ciudad  SI es  ECO."
else
    echo "La ciudad $ciudad NO es ECO."
fi