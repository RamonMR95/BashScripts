#! /bin/bash
# Nombre : Ramón Moñino Rubio
# Enunciado : Hacer un script que acepte como parámetro un número. El script
# debe avisar por pantalla si no se le pasa ningún parámetro, o si el parámetro
# que se le pasa no es un número. Una vez comprobado que le ha pasado un número,
# dibujara por pantalla tantos caracteres @ como indique el número.
# (Así, si se le pasa como parámetro al script un 12, dibujará por
# pantalla @@@@@@@@@@@@ (12 veces la @).

cadena=""

if [[ $# -eq 1 ]] && [[ $1 =~ ^[0-9]+$ ]]; then
  for (( i = 0; i < $1; i++ )); do
    cadena=$cadena"@"
  done
else
  echo Parámetro inválido, introduce un número.
fi

echo $cadena
