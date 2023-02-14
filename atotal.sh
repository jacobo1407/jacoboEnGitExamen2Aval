#!/bin/bash

total=0
 read -p "Introduce una ciudad entre Valencia ,Madrid y Barcelona: " ciudad
while ! grep -qw "$ciudad" consumos.txt; do
  read -p "No se encuentra la ciudad. Vuelve a introducir una ciudad: " ciudad
done
while read line; do
  if [[ $line == "$ciudad"* ]]; then
    consumo=$(echo $line | awk '{print $4}')
    total=$((total+consumo))
  fi
done < consumos.txt
echo "El consumo de $ciudad es de  $total ."