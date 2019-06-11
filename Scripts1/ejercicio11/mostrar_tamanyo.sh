#! /bin/bash
# Nombre : Ramón Moñino Rubio
# Enunciado: Hacer un script que admita como parámetros el nombre
# de dos ficheros. El script debe avisar si los parámetros
# pasados no existe como ficheros, o si no se le pasan parámetros,
# o si solo se pasa un parámetro. Una vez comprobados que se le han
# pasado dos ficheros, el script debe mostrar por pantalla el tamaño en
# KB de cada uno de ellos.

f1=$1
f2=$2

if [[ $# -eq 2 ]]; then
  if [[ -f $fichero1 ]] && [[ -f $fichero2 ]]; then
    echo $(du -sh $f1)
    echo $(du -sh $f2)
  fi
else
  echo "Numero incorrecto de parámetros $#"
fi
