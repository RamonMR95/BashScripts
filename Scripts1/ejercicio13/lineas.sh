#! /bin/bash
# Nombre : Ramón Moñino Rubio
# Enunciado: Script que aceptará tres parámetros, el primero será un
# carácter cualquiera, el segundo un número entre 1 y 60 y el tercero un número
# entre 1 y 10. El script debe dibujar por pantalla tantas líneas como indique el
# parámetro 3, cada línea formada por tantos caracteres del tipo parámetro 1 como
# indique el número indicado en parámetro 2. El script debe controlar que no se
# le pase alguno de los parámetros y que los números no estén comprendidos entre
# los límites indicados. Ejemplo: ./líneas.sh k 20 5  (escribirá 5 líneas, cada
# una de ellas formadas por 20 letras k.

CARACTER=$1
NUM1=$2
NUM2=$3

if [[ $# -eq 3 ]]; then
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
