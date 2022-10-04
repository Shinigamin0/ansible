#!/bin/bash
apt update
apt -y install ansible inetutils-ping nmap wget curl htop dnsutils python3 python3-pip sshpass
apt-get clean
