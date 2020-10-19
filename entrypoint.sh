#!/usr/bin/env bash

IMAGE_NAME="$INPUT_GCR_HOST/$GOOGLE_PROJECT_ID/$INPUT_IMAGE_NAME:$INPUT_IMAGE_TAG"
CONTEXT_PATH="${INPUT_CONTEXT:-.}"

echo $GCLOUD_SERVICE_KEY | docker login -u _json_key --password-stdin https://$INPUT_GCR_HOST/
docker build -t $IMAGE_NAME $CONTEXT_PATH
docker push $IMAGE_NAME
