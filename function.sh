#!/bin/bash

function saludar () {
	echo Hola $1
}

for USUARIO in ${@}; do
	saludar $USUARIO
done
