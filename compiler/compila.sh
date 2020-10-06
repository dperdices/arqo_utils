#!/bin/bash
cat $1 | docker run --rm -i arqo-compiler:latest 2> /tmp/datos 1> /tmp/instrucciones
if [ $? -eq 0 ]
then
	mv /tmp/datos datos
	mv /tmp/instrucciones instrucciones
	echo "Compilado correctamente"
else
	echo "Error de compilación"
	cat /tmp/datos
fi

