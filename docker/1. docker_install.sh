#!/bin/bash
set -ex

sudo apt-get update

sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg
    
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

sudo apt-get update

sudo apt-get install docker-ce docker-ce-cli containerd.io

sudo docker version

sudo docker run hello-world

sudo groupadd docker

sudo usermod -aG docker $USER
