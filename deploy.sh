#!/bin/bash

docker login -u vennila1995 -p dckr_pat_AjZmebMzfg0Ghh3nl9Hjn0zoB0E
GIT_BRANCH=$(git rev-parse --abbrev-ref HEAD)

if [ "$GIT_BRANCH" == "dev" ]; then
        echo "In Dev branch"
docker tag myimage vennila1995/dev
docker push vennila1995/dev
elif [ "$GIT_BRANCH" == "master" ]; then
	echo "In Prod Branch"
docker tag myimage vennila1995/dev
docker push vennila1995/dev
elif [ "$GIT_BRANCH" == "master" ]; then
	echo "In Master branch"
docker tag myimage vennila1995/prod
docker push vennila1995/prod
else
echo "Image is not pushed in DockerHub."
fi
