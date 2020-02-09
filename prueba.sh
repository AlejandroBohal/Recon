#!/bin/sh
grupos=$(groups $1)
IFS=' ' read -r -a gruposl <<< "$grupos"
echo  "${gruposl[3]}"


