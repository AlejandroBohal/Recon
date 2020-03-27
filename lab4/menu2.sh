#!/bin/bash
clear

end=0
while [ $end = 0 ]

do
	echo "========================================================================"
	echo ""
	echo "PROGRAMADOR DE TAREAS CON CRONTAB"
	echo "1) Hacer backup de archivo "
	echo "2) Tomar snapshot "
	echo "3) Indicar puertos abiertos "
	echo "4) Salir"
	echo "Introduzca una opcion y presione enter"
	echo "========================================================================"
	echo ""
	read numMenu
	case "$numMenu" in
		1)
			clear
			bash crontabBackups.sh
			;;
		2)
			clear
			bash crontabSnapshots.sh
			;;
		3)
			clear
			bash crontabPuertoss.sh
			;;
		
		4)
			clear
			echo "Programa cerrado con éxito"
			end=1
			;;
		*)
		;;
	esac
done
