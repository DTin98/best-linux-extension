#!/bin/bash
# Update package list and upgrade all packages
sudo apt update
sudo apt upgrade -y

# Install prerequisites
sudo apt install -y apt-transport-https ca-certificates curl software-properties-common

# Add Docker's official GPG key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

# Add Docker's stable repository
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"

# Update package list again
sudo apt update

# Install Docker
sudo apt install -y docker-ce

# Verify Docker is installed and running
sudo systemctl status docker

# Install Docker Compose
sudo curl -L "https://github.com/docker/compose/releases/download/1.25.5/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

# Apply executable permissions to Docker Compose
sudo chmod +x /usr/local/bin/docker-compose

# Verify Docker Compose is installed
docker-compose --version
