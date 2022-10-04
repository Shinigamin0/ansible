if [ "$(docker network ls | awk '{print $2}'| grep ansible)" == "" ];
then
    echo "Creado red ansible..."
    docker network create ansible
else
    echo "Red ansible ya existe..."
fi