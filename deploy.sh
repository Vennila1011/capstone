#!/bin/bash

docker login -u $Username -p $Password

if [ "$GIT_BRANCH" == "origin/dev" ]; then
docker tag myimage vennila1011/myimage:dev
docker push vennila1011/dev
elif [ "$GIT_BRANCH" == "origin/master" ]; then
docker tag myimage vennila1011/myimage:prod
docker push vennila1011/prod
else 
echo "Image is not pushed in DockerHub."
fi






