#!/bin/sh
clear
sed "s/$2/$3/g" $1 > $4
var=$(sed "s/$2/$3/g" $1)
var2=$(sed "s/$2//g" $1)
let cambio=${#var}
let cambioVacio=${#var2}
let total=$cambio-$cambioVacio
echo "Caracteres cambiados"
echo $total
