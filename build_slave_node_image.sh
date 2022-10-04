#!/bin/bash
image_name="ansible-slave"
image_version="1.0.0"

echo "Construyendo imagen..."
docker build -t $image_name":"$image_version -f Dockerfiles/slave_Dockerfile .
