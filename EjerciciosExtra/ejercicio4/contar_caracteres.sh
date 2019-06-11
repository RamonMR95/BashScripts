#! /bin/bash
# Nombre : Ramón Moñino Rubio
# Enunciado :En el ejercicio 1 hacer que los caracteres a contar sean introducidos
# por el usuario, pudiendo ser cualquier cantidad

CARACTER=""
FICHERO=$(cat $1)
CONTADOR=0

if [[ $# -eq 1 ]]; then
  if [[ -f $1 ]]; then
    while [[ $CARACTER != -1 ]]; do
      read -p "Introduce un caracter: " CARACTER

      for (( i = 1; i < $(cat $1 | wc -c); i++ )); do
        AUX=$(echo $FICHERO | cut -c $i)

        if [[ $AUX = $CARACTER ]]; then
          let CONTADOR++;
        fi
      done
      echo $CONTADOR
      let CONTADOR=0
    done
  else
    echo "El fichero no existe"
  fi
else
  echo "Número inválido de caracteres"
fi
