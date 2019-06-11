#! /bin/bash
# Nombre : Ramón Moñino Rubio
# Enunciado :Hacer que al principio aparezca un menú del que el alumno seleccione
# si lo que quiere es Introducir frase, Existe, Contar, Sustituir o Salir.
# Haciendo la operación oportuna en cada caso.

clear

select ACCION in Frase Existe Contar Sustituir Salir; do
  case $ACCION in
    Frase )
            read -p "Introduce una frase : " FRASE
            echo $FRASE
      ;;
    Existe )
            read -p "Introduce un caracter : " CARACTER
            EXISTE=FALSE

            for (( i = 1; i < $(echo $FRASE | wc -c); i++ )); do
              AUX=$(echo $FRASE | cut -c $i)

              if [[ $AUX = $CARACTER ]]; then
                EXISTE=TRUE
              fi
            done

            if [[ $EXISTE = TRUE ]]; then
              echo "El caracter $CARACTER existe"
            else
              echo "El caracter $CARACTER no existe"
            fi
      ;;
    Contar )
            read -p "Introduce caracter a contar : " CHARAC
            CONTADOR=0
            for (( i = 1; i < $(echo $FRASE | wc -c); i++ )); do
              AUX=$(echo $FRASE | cut -c $i)

              if [[ $AUX = $CHARAC ]]; then
                let CONTADOR++;
              fi
            done

            echo "El caracter aparece $CONTADOR veces"
            let CONTADOR=0
      ;;
    Sustituir )
              read -p "Introduce el caracter a reemplazar: " CARAC
              read -p "Introduce el caracter que reemplaza: " REEMP
              SENT=""

              for (( i = 1; i < $(echo $FRASE | wc -c); i++ )); do
                AUX=$(echo $FRASE | cut -c $i)

                if [[ $AUX = $CARAC ]]; then
                  SENT=$SENT$REEMP
                else
                  SENT=$SENT$AUX
                fi
              done
              echo $SENT
      ;;
    Salir*)
            break
      ;;
  esac
done
