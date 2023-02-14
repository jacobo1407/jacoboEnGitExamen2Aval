#!/bin/bash


lineamaximo=$(tail -n +2 consumos.txt | sort -k4nr | head -n 1)
lineaminimo=$(tail -n +2 consumos.txt | sort -k4n | head -n 1)

ciudadmaximo=$(echo "$lineamaximo" | awk '{print $1}')
mesmaximo=$(echo "$lineamaximo" | awk '{print $2}')
anyomaximo=$(echo "$lineamaximo" | awk '{print $3}')
consumomaximo=$(echo "$lineamaximo" | awk '{print $4}')

ciudadminimo=$(echo "$lineaminimo" | awk '{print $1}')
mesminimo=$(echo "$lineaminimo" | awk '{print $2}')
anyominimo=$(echo "$lineaminimo" | awk '{print $3}')
consumominimo=$(echo "$lineaminimo" | awk '{print $4}')

echo "$ciudadmaximo en $mesmaximo $anyomaximo con un consumo de $consumomaximo ha sido la ciudad con mayor consumo."
echo "$ciudadminimo en $mesminimo $anyominimo con un consumo de $consumominimo ha sido la ciudad con menor consumo."