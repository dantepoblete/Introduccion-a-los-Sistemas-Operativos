#!/bin/bash
ls -a | tr -d 'a' | tr [:lower:] [:upper:]    #Listo los archivos de la carpeta | Los ordeno en columna | Reemplazo las minúsculas por mayúsculas.
exit
