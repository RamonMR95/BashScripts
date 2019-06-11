#! /bin/bash
# Nombre : Ramón Moñino Rubio
# Enunciado: 1.-Hacer un script que acepte como parámetro un fichero regular
# (debe de comprobar existe el fichero) y un caracter (debe comprobar que se introduce
# exactamente dos parámetro, mostrando los mensajes oportunos en cada caso). El script
# debe de contar cuantas veces aparece el caracter en el fichero.Debe obligatoriamente
# utilizarse un bucle para ir comprobando caracter a caracter. (pista cut -c 1)

FICHERO=$(cat $1)
CARACTER=$2
CONTADOR=0

if [[ $# -eq 2 ]]; then
  if [[ -f $1 ]]; then
    for (( i = 1; i < ${#FICHERO}; i++ )); do
      CADENA=$(echo $FICHERO | cut -c $i)

      if [[ $CADENA = $CARACTER ]]; then
        let CONTADOR=CONTADOR+1
      fi
    done
    echo $CONTADOR
  else
    echo "No existe el fichero"
  fi
else
  echo "Numero de parámetros inválido ($#)"
fi
