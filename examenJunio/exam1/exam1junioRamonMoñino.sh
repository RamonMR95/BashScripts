#! /bin/bash
# Nombre : Ramón Moñino Rubio

 #Comprueba que el número de parámetros es igual a 3
if [[ $# -eq 3 ]]; then
 #Validación para que los números sean positivio
  if [[ $1 -ge 0 ]] && [[ $2 -ge 0 ]] && [[ $3 -ge 0 ]] && [[ $1 -ne $2 ]]; then
      # let ALEATORIO=$[$1+$[ RANDOM%$2 ]]
      read -p "Numero Aleatorio : " ALEATORIO
      NUM1=$1
      NUM2=$2
      FIN="FALSE"
      echo "Numero aleatorio generado(solo para depurar): $ALEATORIO"

      # El bucle itera mientras que no se presione enter y la variable de control de
      # programa sea distinta de verdadero.
      while [[ $FIN != "TRUE" ]] && [[ $NUM1 != "" ]] && [[ $NUM2 != "" ]]; do
        read -p "Dime el primer número: " NUM1
        read -p "Dime el segundo número: " NUM2

        # Se comprueba si el numero aleatorio está dentro del rango
        if [[ $ALEATORIO -ge $NUM1 ]] && [[ $ALEATORIO -le $NUM2 ]]; then
          echo "Dentro de rango"
          RANGO=$[ $NUM2-$NUM1 ]

          # Si el rango es menor o igual al tercer parámetro entonces ganas el juego
          if [[ $RANGO -le $3  ]]; then
            echo "Ganaste"
            FIN="TRUE"
          fi
        else
          echo "Fuera de rango"
      fi
      done
  else
    echo "Los números no son correctos"
  fi
else
  echo "El número de parámetros es incorrecto"
fi
