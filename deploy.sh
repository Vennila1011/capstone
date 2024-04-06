#!/bin/bash

docker login -u $Username -p Password

if [GIT_BRANCH == "origin/dev"]; then
docker tag
docker push vennila1011/dev:latest
elif [GIT_BRANCH == "origin/master"]; then
docker tag
docker push vennila1011/prod:latest
else 
echo"Image is not pushed"
fi






