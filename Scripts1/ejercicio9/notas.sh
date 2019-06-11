#! /bin/bash
# Nombre : Ramón Moñino Rubio
# Enunciado: Hacer un script que nos pida el número de alumnos de una clase.
# Posteriormente irá pidiendo la nota de cada una de ellos para la asignatura
# de ISO. Al final indicará el número de aprobados, el número de suspensos y
# la nota media.

clear
read -p "Introduce el número de alumnos: " N_ALUMNOS
SUMA=0
C_APROBADOS=0
C_SUSPENSOS=0
AUX=$N_ALUMNOS


while [[ AUX -gt 0 ]]; do
  read -p "Introduce nota: " NOTA

  if [[ NOTA -lt 5 ]]; then
    let C_SUSPENSOS=C_SUSPENSOS+1
  else
    let C_APROBADOS=C_APROBADOS+1
  fi

  let SUMA=SUMA+NOTA
  let AUX=AUX-1
done

MEDIA=$(echo "scale=2 ;$SUMA / $N_ALUMNOS" | bc)

echo "Media de la clase : $MEDIA"
echo "Número de aprobados : $C_APROBADOS"
echo "Número de suspensos : $C_SUSPENSOS"
