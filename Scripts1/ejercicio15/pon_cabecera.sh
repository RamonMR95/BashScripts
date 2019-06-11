
#! /bin/bash
# Nombre : Ramón Moñino Rubio
# Enunciado: Tenemos un directorio que contiene, entre otras cosas, scripts de shell.
# Se desea modificarlos, insertando entre su primera y segunda línea el copyright del autor,
# la fecha y el nombre del fichero. Por ejemplo, el script hola_mundo.sh

# !/bin/bash
# echo hola mundo
# quedaría:#!/bin/bash# FILE: hola_mundo.sh#
# (c) Ango. You can redistribute this program under GNU GPL.
# mié abr 11 14:30:08 CEST 2007
# echo hola mundo
# El script se usará de la siguiente forma:pon_cabecera.sh /home/usuario/scripts/home/usuario/licencia.txt
# El primer parámetro indica el directorio donde están  los scriptscon  extensión  .sh.
# El segundo es el fichero con el mensaje de copyright(c)(una única línea).
