#!/bin/bash

docker build -t myimage .
<<<<<<< HEAD
docker-compose up -d 
=======
docker-compose up -d
>>>>>>> cdb9573 (Updated build.sh and deploy.sh)
echo "The build is successful"

