# Bash
use vi or vim

quit vi/vim 
```bash
:wq # or crash computer (whatever works for you)
```

shebang

```bash
!#
```

Run script
```bash
bash script.sh
bash greeetings.sh argument
bash web_status.sh (argument url with https://) # returns web status
```

## Use variables and conditions

```bash
$()

if [ condition ]; then
	do smth
else
	do smth else
fi
```

### Grant execution permission

```bash
chmod +x your_script.sh
```
so insead of

```bash
bash your_script.sh
```

you do
```bash
./your_script.sh
```

use multiple arguments

```
$@
```

## Syntax

### Function
```bash
function saludar () {
	echo Hola $1
}
```

### For
```bash
function saludar () {
	echo Hola $1
}

for USUARIO in ${@}; do
	saludar $USUARIO
done
```

### Case

```bash
function saludar () {
	echo Hola $1
}

case "${1}" in
	start)
		echo "Ejecutaste start"
		;;
	finish)
		echo "Ejecutaste finish"
		;;
	restart)
		echo "Ejecutaste restart"
		;;
	*)
		echo "Especificaste un argumento invalido"
esac
```

### While

```bash
function saludar () {
	echo Hola $1
}

X=3

while [[ $X -ge 1 ]]; do
	echo "El valor de X es $X"
	X=$((X-1))
done
```

### Flags

```bash
while getopts "a:b" FLAG
do
	case "${FLAG}" in
		a)
			echo "Pasaste la opcion '-a' al script"
			echo "El argumento de '-a' es ${OPTARG}"
			;;
		b)
			echo "Pasaste la opcion '-b' al script"
			;;
		*)
			echo "Uso invalido, por favor pasar opciones '-a' o '-b'"
			;;
	esac
done
```

the ":" after "a" flag allows to use the value of given argument with