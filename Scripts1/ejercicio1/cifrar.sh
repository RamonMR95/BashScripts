#! /bin/bash
# Nombre : Ramón Moñino Rubio
# Enunciado : Hacer un script que acepte como parámetro una palabra. El script
# debe reescribir la palabra por la pantalla, pero cambiando la a por un 1,
# la e por un 2, la i por un 3, lo o por un 4 y la u por un 5.

CIFRADA=$(echo $1 | tr aeiou 12345)

echo "$1 cifrada a $CIFRADA"
