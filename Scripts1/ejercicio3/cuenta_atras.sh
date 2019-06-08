#! /bin/bash
# Nombre : Ramón Moñino Rubio
# Enunciado : Crear un script llamado cuenta_atras.sh que nos pida dos
# números cualesquiera, deberá mostrar por pantalla todos los números entre
# el mayorde  los  dosintroducidos  y  el menor. (Asísi introducimos 20 1 nos
# mostrará los números del 20 al 1, si introducimos 56 89 nos mostrará los
# números del 89 al 56).

clear

read -p "Limite Inferior : " LIM_INFERIOR
read -p "Limite Superior : " LIM_SUPERIOR

if [[ LIM_INFERIOR -gt LIM_SUPERIOR ]]; then
  AUX=$LIM_INFERIOR
  LIM_INFERIOR=$LIM_SUPERIOR
  LIM_SUPERIOR=$AUX
fi

for (( i = $LIM_SUPERIOR; i >= $LIM_INFERIOR; i-- )); do
  echo $i
done
