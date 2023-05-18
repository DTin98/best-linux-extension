#!/bin/bash

# Updating existing list of packages
sudo apt update

# Installing prerequisite packages
sudo apt install -y apt-transport-https ca-certificates curl software-properties-common

# Adding the GPG key for the official Docker repository
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

# Adding the Docker repository to APT sources
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"

# Updating the package database with the Docker packages
sudo apt update

# Installing Docker
sudo apt install -y docker-ce

# Checking Docker status
sudo systemctl status docker
