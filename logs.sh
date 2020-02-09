#!/bin/sh
echo 'Introduzca fecha o nombre del servicio'
read filtro
ls -l | grep "$filtro" /var/log/syslog > logs.txt

awk '{print "\n" "Fecha: " $1 $2 " "$3 " Servicio: " $8$9 "\n" " Mensaje: " $10$11$12$13 " Tiempo:" $7 "\n"}' logs.txt

