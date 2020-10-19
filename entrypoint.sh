#!/bin/sh -l

IMAGE_NAME="$INPUT_GCR_HOST/$INPUT_GCR_PROJECT_ID/$INPUT_DOCKER_IMAGE_NAME:$INPUT_DOCKER_IMAGE_TAG"

echo $INPUT_GCR_SERVICE_KEY | docker login -u _json_key --password-stdin https://$INPUT_GCR_HOST/
docker build -t $IMAGE_NAME $INPUT_DOCKER_CONTEXT
docker push $IMAGE_NAME
