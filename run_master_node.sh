docker run \
    --name master-ansible \
    --network=ansible \
    -v $(pwd)/ansible:/ansible_projects \
    -i -d ansible-master:1.0.0