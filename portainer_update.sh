#!/bin/bash

# Created based on the official Portainer documentation
# Script assumes that you are using the default external configuration location

# Stop existing container
docker stop portainer

# Remove Existing Container
docker rm portainer

# Pull latest Package
docker pull portainer/portainer-ce:latest

# Deploy New Container
docker run -d -p 8000:8000 -p 9443:9443 --name=portainer --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer-ce:latest