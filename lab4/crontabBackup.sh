#!/bin/bash
echo '============================================================================'
echo 'Introduzca Archivo y directorio completo (con nombre de destino) para backup'
read archivo directorio
cronjob="sh /root/RecoSlack/lab4/backup.sh $archivo $directorio"
echo ''
echo 'Para programar esta tarea se usara crontab, se repetirá periodicamente'
echo 'Segun rangos establecidos en 5 caracteres introducidos seguidos por espacio'
echo 'para más información ingresar a crontab.guru'
echo ''
echo '==========================================================================='
read a b c d e
crontab -l |{ cat; echo "$a $b $c $d $e $cronjob"; } | crontab -

