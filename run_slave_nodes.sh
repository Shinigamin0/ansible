#!/bin/bash
cant=3

if [ -f slave_nodes.txt ];
then
    rm -rf slave_nodes.txt
fi

for (( c=1; c<=$cant; c++ ))
do 
    docker run \
    --name slave-ansible-$c \
    --network=ansible \
    -i -d ansible-slave:1.0.0
    
    echo "slave-ansible-$c" >> slave_nodes.txt
done

