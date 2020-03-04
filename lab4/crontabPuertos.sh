#!/bin/bash
echo '============================================================================'
echo 'Programacion de tarea vista de puertos'
cronjob="sh /root/RecoSlack/lab4/puertos.sh"
echo ''
echo 'Para programar esta tarea se usara crontab, se repetirá periodicamente'
echo 'Segun rangos establecidos en 5 caracteres introducidos seguidos por espacio'
echo 'Estos rangos definen una unidad de tiempo como minuto hora dia mes semana respectivamente' 
echo 'para más información ingresar a crontab.guru'
echo ''
echo '==========================================================================='
echo 'Introduzca configuracion crontab'
echo ''
read a b c d e
crontab -l |{ cat; echo "$a $b $c $d $e $cronjob"; } | crontab -

