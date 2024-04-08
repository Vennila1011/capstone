#!/bin/bash

docker build -t myimage .

docker-compose up -d 

echo "The build is successfull"

