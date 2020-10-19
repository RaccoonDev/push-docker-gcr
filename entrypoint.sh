#!/usr/bin/env bash

IMAGE_NAME="$INPUT_GCR_HOST/$GOOGLE_PROJECT_ID/$INPUT_IMAGE_NAME:$INPUT_IMAGE_TAG"
DOCKERFILE_PATH="${INPUT_DOCKERFILE:-.}"

echo $GCLOUD_SERVICE_KEY | docker login -u _json_key --password-stdin https://$INPUT_GCR_HOST/
docker build -t $IMAGE_NAME $DOCKERFILE_PATH
docker push $IMAGE_NAME
