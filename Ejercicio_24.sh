#!/bin/bash
vector1=(2 4 6 8 10 12)
vector2=(1 3 5 7 9 11)
for (( i=0; i <${#vector1[@]}; i++ )) do
  suma=$((${vector1[i]}+${vector2[i]}))
  echo "La suma de los elementos de la posición $i de los vectores es $suma"
done
exit