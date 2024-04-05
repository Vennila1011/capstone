#!/bin/bash
set -e


DOCKER_USERNAME="vennila1011"
IMAGE_NAME="myimage"
TAG="latest"


docker build -t $DOCKER_USERNAME/$IMAGE_NAME:$TAG .

docker login

docker push $DOCKER_USERNAME/dev/$IMAGE_NAME:$TAG

echo "Image $DOCKER_USERNAME/$IMAGE_NAME:$TAG has been pushed to Docker Hub!"






