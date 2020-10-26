#!/bin/bash
if [ "$1" == '+' ]; then
	echo "Suma: $(($2+$3))"
elif [ "$1" == '-' ]; then
	echo "Resta: $(($2-$3))"
elif [ "$1" == '*' ]; then
	echo "Multiplicación: $(($2*$3))"
elif [ "$1" == '/' ]; then
	echo "División: $(($2/$3))"
else
	echo "La operación solicitada no es válida"
fi
exit