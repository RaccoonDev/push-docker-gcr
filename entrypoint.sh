#!/bin/sh -l

IMAGE_NAME="$INPUT_GCR_HOST/$GOOGLE_PROJECT_ID/$INPUT_IMAGE_NAME:$INPUT_IMAGE_TAG"

echo $GCLOUD_SERVICE_KEY | docker login -u _json_key --password-stdin https://$INPUT_GCR_HOST/
docker build -t $IMAGE_NAME .
docker push $IMAGE_NAME
