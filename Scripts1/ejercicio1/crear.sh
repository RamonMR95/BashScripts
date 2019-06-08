#! /bin/bash
# Nombre : Ramón Moñino Rubio
# Enunciado : Crear un script con nombre crear.sh que
# admita dos parámetros, el primero indicará el nombre de un fichero,
# y el segundo su tamaño. El script creará en el directorio actual un fichero
# con el nombre dado y el tamaño dado en Kilobytes. En caso de que no se
# le pase el segundo parámetro, creará un fichero con 1.024 Kilobytes y
# el nombre dado. En caso de que no se le pase ningúnparámetro, creará
# un fichero con nombre fichero_vacio y un tamaño de 1.024 Kilobytes.


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

dd if=/dev/zero of=./$NOMBRE.txt count=1024 bs=$TAMANYO
