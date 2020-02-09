#!/bin/bash
clear

end=0
while [ $end = 0 ]

do
	echo "========================================================================"
	echo ""
	echo "M E N U "
	echo "1) Mostrar logs del sistema"
	echo "2) Mostrar servicios del sistema"
	echo "3) Mostrar servicios de red"
	echo "4) Mostrar permisos por usuario"
	echo "5) Mostrar estado de la ram"
	echo "6) Mostrar estado del disco"
	echo "7) Mostrar estado del sstema"
	echo "8) Salir"
	echo ""
	echo "Introduzca una opcion y presione enter"
	echo "========================================================================"
	echo ""
	read numMenu
	case "$numMenu" in
		1)
			clear
			echo "Logs del sistema"
			echo ""
			sh logs.sh
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
			echo "Permisos"
			echo ""
			sh permisosUsuario.sh
			;;
		5)
			clear
			echo "Estado actual de la memoria ram"
			echo ""
			sh mostrarEstadoRam.sh
			;;
		6)
			clear
			echo "Estado actual del disco"
			echo ""
			sh mostrarEstadoDisco.sh
			;;
		7)
			clear
			echo "Estado actual de la red"
			echo ""
			netstat -p
			;;
		8)
			clear
			echo "Programa cerrado con éxito"
			end=1
			;;
		*)
		;;
	esac
done
