#!/bin/bash
image_name="ansible-master"
image_version="1.0.0"

echo "Construyendo imagen..."
docker build -t $image_name":"$image_version -f ./Dockerfiles/master_Dockerfile .
