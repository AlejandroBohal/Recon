#!/bin/bash

hora=$(date +%H:%M)
netstat -lntu > /home/sistema/network_$hora
