#!bin/bash
if [ $# -ne 1 ];then    #Verifico que sea ingresado un solo parámetro.
  echo "INVALID PARAMETERS"
  exit 2
fi
numval='^[1-900]+$'   #Representa al rango de enteros positivos entre el 1 y 900.
if ! [[ $1 =~ $numval ]];then   #Verifico que el valor del parámetro sea un número entero positivo.
  echo "INVALID PARAMETER"
  exit 1
fi  
fecha1=""
fecha2=""
cant=0
for linea in $(cat 2013_2020.csv); do   #Abro el archivo csv y trabajo con cada una de sus líneas.
  suma=0
  for (( i=2; i<=7; i++ )) do   #Para cada linea del archivo trabajo con el rango de columnas de 2 a 7 ya que contienen los valores que necesito.
      num=$(echo $linea | cut -d "," -f$i)  #Obtengo el numero correspondiente a la columna i.
      let suma=$suma+10#$num
  done
  if [ $suma -eq $1 ]; then   #Asigno la fecha de la primer ocurrencia.
    let cant=$cant+1    #Actualizo la cantidad de ocurrencias.
    if [ "$fecha1" == "" ];then
      fecha1=$(echo $linea | cut -d "," -f1)
    else
      fecha2=$(echo $linea | cut -d "," -f1)    #Si la primer ocurrencia ya se encuentra asignada, solo actualizo la ultima ocurrencia procesada.
    fi
  fi
done
#Imprimo los resultados.
echo $cant
echo $fecha1
echo $fecha2
exit
