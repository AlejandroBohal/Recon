#!/bin/bash
clear

end=0
while [ $end = 0 ]

do
	echo "========================================================================"
	echo ""
	echo "PROGRAMADOR DE TAREAS CON CRONTAB"
	echo "1) Hacer backup de archivo "
	echo "2) "
	echo "3) "
	echo "4) Salir"
	echo "Introduzca una opcion y presione enter"
	echo "========================================================================"
	echo ""
	read numMenu
	case "$numMenu" in
		1)
			clear
			echo "Backup de archivo"
			echo ""
			bash crontabBackup.sh
			bash backup.sh
			;;
		2)
			clear
			echo "Servicios corriendo actualmente en la maquina"
			echo ""
			sh servicios.sh
			;;
		3)
			clear
			echo "Servicios de red"
			echo ""
			sh serviciosDeRed.sh
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
