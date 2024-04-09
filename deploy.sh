#!/bin/bash

# Docker login

docker login -u vennila1995 -p dckr_pat_AjZmebMzfg0Ghh3nl9Hjn0zoB0E

GIT_BRANCH=$(git rev-parse --abbrev-ref HEAD)
echo "Current Git branch: $GIT_BRANCH"
# Check the Git branch

if [[ $GIT_BRANCH == "dev" ]]; then
        echo "In Dev branch"
docker tag my_reactapp_image vennila1995/dev
docker push vennila1995/dev
elif [[ $GIT_BRANCH == "master" ]]; then
	echo "In Prod Branch"
docker tag my_reactapp_image vennila1995/prod
docker push vennila1995/prod
else
echo "Image is not pushed in DockerHub."
fi
