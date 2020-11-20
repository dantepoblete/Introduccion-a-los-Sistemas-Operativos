Se tiene un archivo con el resultado histórico de una Loteria, el archivo está delimitado por comas (archivo adjunto 2013_2020.csv). Por favor analice la imagen adjunta para ver la estructura del archivo:


| Fecha | Combinación Ganadora | Comp. | R. | Joker |
| ------------- | :-------------: | :-------------: | ------------- | ------------- |
|24/10/2020|09,17,24,41,42,47|39|1|7970561|
|22/10/2020|13,17,31,36,39,43|19|6|5593195|
|17/10/2020|01,07,39,40,41,46|33|3|3016350|
|15/10/2020|01,10,13,23,42,48|40|2|7009115|
|10/10/2020|01,04,16,27,36,44|40|4|8315266|
|8/10/2020|01,06,09,11,21,39,|19|1|2712677|
|3/10/2020|05,12,13,27,42,48|14|5|5097034|
|1/10/2020|04,06,10,25,29,41|19|8|3634529|
|26/09/2020|07,10,14,15,26,46|20|0|3844410|
|24/09/2020|03,10,13,15,31,48|43|6|3402449|
|19/09/2020|07,17,19,35,42,44|06|5|3194731|
|17/09/2020|08,18,19,20,36,40|37|9|6316945|
|12/09/2020|05,18,25,28,35,46|02|4|8403588|
|10/09/2020|23,29,30,36,37,43|33|7|9766090|
|5/09/2020|07,12,14,21,34,38|24|2|5865390|
|3/09/2020|10,11,13,26,44,45|37|5|2540174|
|29/08/2020|01,06,11,20,24,35|02|2|1971223|
|27/08/2020|09,16,35,42,47,49|27|8|4651140|
|22/08/2020|10,12,14,31,33,40|08|3|5222218|


Su script va a recibir un parámetro que debe ser un número y siempre mayor a 0.

El parámetro representa la suma de valores para la combinación ganadora. La combinación son los números de las columnas 2 a la 7 inclusive. Tenemos que encontrar la cantidad de sorteos en los que la suma de los números de la combinación ganadora coincide con el parámetro recibido.
Ademas debemos imprimir la fecha de la primer y ultima coincidencia que encontramos en el archivo(primera y última según el orden del archivo, no en orden temporal)-

Por ejemplo si recibo
180

Debo Imprimir:

3

24/10/2020

1/02/2018

Explicación: Hay 6 combinaciones que sumados sus números dan 180, la primera
del archivo corresponde al 24/10/2020 y la última al 18/10/2014.

Otro Ejemplo:

Si recibo:370

Debo Imprimir:

0

Explicación: No hay ninguna combinación ganadora cuta suma de números nos de 0

Si recibo: X

Debo Imprimir:

INVALID PARAMETERS

Explicación: El script debe recibir solo números

Ayuda: a veces para sumar números en bash que comienzan con 0, (por ejemplo 09) nos pasa que el número se interpreta como octal y podemos tener un error, entonces hay que indicarle a bash que el numero es decimal. Por ejemplo si queremos sumar dos variables y almacenar su resultado en otra debemos hacerlo asi:

let "sum = 10#$n1 + 10#$n2"

Es imperativo y OBLIGATORIO que su script retorne los valores en el orden indicado y como se detallo anteriormente.

No imprima cosas innecesarias por pantalla. En tal caso el resultado se considera inválido.
