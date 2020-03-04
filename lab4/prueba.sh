#!/bin/bash

hora=$(date +%H:%M)
echo $hora
history > history_$hora
