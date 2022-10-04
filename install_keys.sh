#!/bin/bash
password="ansible"
while read node;
do
    sshpass -p $password ssh-copy-id -o StrictHostKeyChecking=no ansible@$node
done < slave_nodes.txt