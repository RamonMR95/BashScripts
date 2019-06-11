#! /bin/bash
# Nombre : Ramón Moñino Rubio
# Enunciado: Crear un fichero con nombre palabra.txt y escribir en el mismo una
# palabra en una única línea. Modificar el script anterior, de modo que no se le
# pase el carácter. En su lugar se usará  la palabra leída de dicho fichero
# palabra.txt. Ejemplo:./lineas2.sh 6 5 (escribirá 5 líneas, cada una de  
# ellas formadas por repetir 6veces la palabra que este escrita en palabra.txt)


CARACTER=$(cat palabra.txt)
NUM1=$1
NUM2=$2

if [[ $# -eq 2 ]]; then
  if [[ $NUM1 -ge 1 ]] && [[ $NUM1 -le 60 ]] && [[ $NUM2 -ge 1 ]] && [[ $NUM2 -le 10 ]]; then
    for (( i = 0; i < $NUM2; i++ )); do
      for (( j = 0; j < $NUM1; j++ )); do
        echo -n $CARACTER
      done
      echo
    done
  fi
else
  echo "Número de parámetros no válido $#"
fi
