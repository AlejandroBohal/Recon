hora=$(date +%H:%M)
ps -eo fname,pcpu,pmem | awk -F " " '{print "Name: " $1 "\n%CPU: " $2 " %MEM: " $3 "\n"}' > /home/sistema/usoCPU_RAM_$hora
