#! /bin/bash
# Nombre : Ramón Moñino Rubio

read -p "Introduzca el nombre del fichero: " FICHERO

# Se comprueba si existe el fichero
if [[ -f $FICHERO ]]; then
  # Se recorre el fichero en primera instancia
  for word in $(cat $FICHERO); do
    COUNTER=0 # Contador de veces que se encuentra el numero
    # Se recorre de nuevo
    for num in $(cat $FICHERO); do
      # Si el numero que registramos en la primera iteracion se encuentra
      # en la segunda iteracion, se aumenta el contador de apariciones.
      if [[ $word = $num ]]; then
        let COUNTER++
      fi
    done
    # Si el contador es mayor que 1 significa que es un valor repetido y
    # se muestra por pantalla
    if [[ $COUNTER -gt 1 ]]; then
      echo $word
    fi
  done
else
  echo "El fichero $1 no existe"
fi
