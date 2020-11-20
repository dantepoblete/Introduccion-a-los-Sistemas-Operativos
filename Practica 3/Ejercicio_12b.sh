#!/bin/bash

echo "Multiplicacion: $(($1*$2))"
echo "Suma: $(($1+$2))"
echo "Resta: $(($1-$2))"
if [ $2 -lt $1 ]; then
	echo "El mayor numero ingresado es $1"
else
	echo "El mayor numero ingresado es $2"
fi

exit
