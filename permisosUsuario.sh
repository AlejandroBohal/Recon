#!/bin/bash
echo introduza usuario y directorio
read usuario directorio
l=()
le=()
lee=()
w=()
x=()
verPermisos(){
	if [ $1 -eq '7' ]
	then  
		lee+=("$2")
	fi
	if [ $1 -eq '6' ]
	then
		le+=("$2")
	fi
	if [ $1 -eq '4' ]
	then
		l+=("$2")
	fi
	if [ $1 -eq '2' ]
	then
		w+=("$2")
	fi
	if [ $1 -eq '1' ]
	then
		x+=("$2")
	fi
}

gruposUsuario=$(groups "$usuario")
IFS=' ' read -r -a listaDeGrupos <<< "$gruposUsuario"
for file in /$directorio/*
do
	permiso=$(stat -c '%a' "$file")
	let pUsuario=$permiso/100
	let aux1=$permiso/100
	let aux2=$aux1*100
	let pGrupo=($permiso-$aux2)/10
	let pOtro=$permiso%10
	perteneceAlGrupo=0
	grupo=$(stat -c '%G' "$file")
	usuarioArchivo=$(stat -c '%U' "$file")
	if [ $usuarioArchivo = $usuario ]
	then
		verPermisos $pUsuario $file 
		
	fi
	for i in "${listaDeGrupos[@]}"
	do
		if [ $i = $grupo ]
		then
			perteneceAlGrupo=1
			break
		fi
	done
	if [ $usuarioArchivo != $usuario ] && [ $perteneceAlGrupo -eq '1' ]
	then
		verPermisos $pGrupo $file
	fi
	if [ $usuarioArchivo != $usuario ] && [ $perteneceAlGrupo -eq '0' ]
	then
		verPermisos $pOtro $file
	fi
done
echo ''
echo 'El usuario '$usuario 'Tiene permisos de'
echo 'Lectura, escritura y ejecucion sobre los archivos:' 
echo ${lee[@]}
echo ''
echo 'Lectura y ecritura sobre los archivos:'
echo ${le[@]}
echo ''
echo 'Solo lectura sobre los archivos:'
echo ${l[@]}
echo ''
echo 'Solo escritura sobre los archivos:'
echo ${w[@]}
echo ''
echo 'Solo ejecucion sobre los archivos:'
echo ${x[@]}
