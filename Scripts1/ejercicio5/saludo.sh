#! /bin/bash
# Nombre : Ramón Moñino Rubio
# Enunciado : Hacer un script que nos diga por pantalla buenos
# días, buenas tardes o buenas noches según la hora del sistema.
# (Elegir vosotros las horas de día, tardes y noches).

HORA=$(date +"%H")

if [[ $HORA -ge 0 ]] && [[ $HORA -lt 12 ]]; then
  echo "Buenas dias por la mañana, son las $HORA"
elif [[ $HORA -ge 12 ]] && [[ $HORA -lt 20 ]]; then
  echo "Buenas tardes, son las $HORA"
else
  echo "Buenas noches, son las $HORA"
fi
