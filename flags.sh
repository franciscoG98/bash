#!/bin/bash

while getopts "ab" FLAG
do
	case "${FLAG}" in
		a)
			echo "Pasaste la opcion '-a' al script"
			;;
		b)
			echo "Pasaste la opcion '-b' al script"
			;;
		*)
			echo "Uso invalido, por favor pasar opciones '-a' o '-b'"
			;;
	esac
done
