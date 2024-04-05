#!/bin/bash

docker stop mycontainer
docker rm mycontainer
docker run -d --name mycontainer -p 8080:80 myimage
echo "Deployed successfully!"

