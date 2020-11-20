#!/bin/bash
echo "Ingrese un numero:"
read num1
echo "Ingrese otro numero:"
read num2
echo "Multiplicacion: $((num1*num2))"
echo "Suma: $((num1+num2))"
echo "Resta: $((num1-num2))"
if [ $num2 -lt $num1 ]; then
	echo "El mayor numero ingresado es $num1"
else
	echo "El mayor numero ingresado es $num2"
fi

exit
