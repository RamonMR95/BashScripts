#! /bin/bash
# Nombre : Ramón Moñino Rubio
# Enunciado : Hacer un script que acepte como parámetro un fichero regular (debe
# de comprobar existe el fichero y que solo se introduce un parámetro, mostrando
# los mensajes oportunos en cada caso). El script debe de contar cuantos ceros,
# unos....nueve hay devolviendo finalmente la cuenta de cada uno.Debe obligatoriamente
# utilizarse un bucle para ir comprobando caracter a caracter. (pista cut -c 1

FICHERO=$(cat $1)

if [[ $# -eq 1 ]]; then
  if [[ -f $1 ]]; then
    my_array=(0 0 0 0 0 0 0 0 0)

    for (( i = 1; i < $(cat $1 | wc -c); i++ )); do
      NUM=$(echo $FICHERO | cut -c $i)

      case $NUM in
        1)
          let my_array[0]++
        ;;
        2)
          let my_array[1]++
        ;;
        3)
          let my_array[2]++
        ;;
        4)
          let my_array[3]++
        ;;
        5)
          let my_array[4]++
        ;;
        6)
          let my_array[5]++
        ;;
        7)
          let my_array[6]++
        ;;
        8)
          let my_array[7]++
        ;;
        9)
          let my_array[8]++
        ;;
      esac
    done

    for (( i = 0; i < 9; i++ )); do
      echo "El numero $i aparece ${my_array[$i]} veces"
    done

  else
    echo "El fichero no existe"
  fi

else
  echo "Número de parámetros no válido"
fi
