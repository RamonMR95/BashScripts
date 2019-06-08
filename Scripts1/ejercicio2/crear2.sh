#! /bin/bash
# Nombre : Ramón Moñino Rubio
# Enunciado : Modificar el ejercicio anterior para que antes de crear el fichero
# compruebe que no exista. En caso de que exista avisará del hecho por pantalla
# y creará el fichero pero añadiéndole un 1 al final del nombre(aguado1,
# por ejemplo). Si también existe un fichero con ese nombre,
# lo creará con un 2 al final del nombre, asíseguiremos hasta intentar el 9.
# Si también existe un fichero con 9 al final del nombre, avisará del hecho
# y no creará nada.


if [[ $# -eq 2 ]]; then
  NOMBRE=$1
  TAMANYO=$2
elif [[ $# -eq 1 ]]; then
  NOMBRE=$1
  TAMANYO=1024
elif [[ $# -eq 0 ]]; then
  NOMBRE=fichero_vacio
  TAMANYO=1024
fi

AUX=$NOMBRE
CONTADOR=0

while [[ -f ./$AUX ]] && [[ CONTADOR -le 9 ]]; do
  let CONTADOR=CONTADOR+1
  AUX=$NOMBRE$CONTADOR
done

if [ $CONTADOR -ge 10 ]; then
  echo "Fuera del rango 10"
else
  dd if=/dev/zero of=./$AUX count=1024 bs=$TAMANYO
  echo Archivo creado : $AUX
fi
