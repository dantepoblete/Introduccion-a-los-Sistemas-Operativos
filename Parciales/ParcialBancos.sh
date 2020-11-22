if [ $# -ne 2 ];then    #Verifico que sean ingresados 2 parametros.
  echo "INVALID PARAMETERS"
  exit 2
fi
arreglo=()
suma=0
i=1
while IFS=, read -r col1 col2 #col1 es el tipo de tarjeta y col2 el resto de los datos
do
  if [ "$1" == "$col1" ] && [ "$2" == "$(echo $col2 | cut -d, -f2)" ];then
    arreglo[i]=$(echo $col2 | cut -d, -f3)
    let suma=$suma+10#$(echo $col2 | cut -d, -f10)
    let i++
  fi  
done < Archivos_Tarjetas_de_crédito_100_CC_Records.csv
echo ${arreglo[*]}
echo $suma
exit
