#! /bin/bash
# Nombre : Ramón Moñino Rubio
# Enunciado: En el ejercicio uno, Crear una función existe que comprueba
# previamente si existen alguna aparición. (esta se puede hacer como se quiera


FICHERO=$(cat $1)
CARACTER=$2
CONTADOR=0

function existe {
  for (( i = 1; i < $(cat $1 | wc -c); i++ )); do
    CADENA=$(echo $FICHERO | cut -c $i)
    if [[ $CADENA == $2 ]]; then
      EXISTE=TRUE
      break
    else
      EXISTE=FALSE
    fi
  done
}


if [[ $# -eq 2 ]]; then
  if [[ -f $1 ]]; then
    existe $1 $2
    if [[ $EXISTE = TRUE ]]; then
      for (( i = 1; i < ${#FICHERO}; i++ )); do
        CADENA=$(echo $FICHERO | cut -c $i)

        if [[ $CADENA = $CARACTER ]]; then
          let CONTADOR=CONTADOR+1
        fi
      done
      echo $CONTADOR
    else
      echo "El caracter no se encuentra en el fichero"
    fi
  else
    echo "El fichero no existe"
  fi
else
  echo "Numero inválido de parámetros"
fi
