#!/bin/bash
echo "Seleccione una opci�n:"
echo "(a)-Listar."
echo "(b)-DondeEstoy."
echo "(c)-QuienEsta"
read opcion
if [ $opcion == 'a' ] then
  ls-a
elif [ $opcion == 'b' ] then
  pwd
elif [ $opcion == 'c' ] then
  users
else
  echo "Opci�n err�nea."
exit