#! /bin/bash
# Nombre : Ramón Moñino Rubio
# Enunciado: Hacer un script que nos pida por pantalla nuestro nombre, y
# nos diga cuantas letrastiene.

clear

read -p "Introduce tu nombre: " NOMBRE
TAMANYO=1

for (( i = 1; i < ${#NOMBRE}; i++ )); do
  let TAMANYO=TAMANYO+1
done

echo "$NOMBRE tiene $TAMANYO letras"

echo "$NOMBRE tiene ${#NOMBRE} letras"
