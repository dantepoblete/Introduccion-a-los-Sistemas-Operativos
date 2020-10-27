#!/bin/bash
vector=(1 2 3 4 5 6 7 8 9 10 11 12)
impares=0
for (( i=0; i <${#vector[@]}; i++ )) do
  if [ $((${vector[i]}%2)) -eq 0 ];then
    echo ${vector[i]}
  else
    impares=$((impares+1))
  fi
done 
echo "La cantidad de numeros impares es: $impares"
exit