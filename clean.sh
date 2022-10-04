#!/bin/bash

echo "CUIDADO! va a limpiar su ambiente local de Docker!!"
read -p "presione y/Y si esta seguro de limpiar... " -n 1 -r
if [[ ! $REPLY =~ ^[Nn]$ ]]
then
    echo ""
    if [ $(docker ps -a -q | wc -l) -gt 0 ] || [ $(docker images -a -q | wc -l) -gt 0 ];
    then
        echo "Limpiando..."
        docker stop $(docker ps -a -q)
        docker rm $(docker ps -a -q)
        docker rmi -f $(docker images -a -q)
        docker system prune -a -f
    else
        echo "No hay contenedores corriendo..."
    fi
fi
