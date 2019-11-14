#!/bin/sh -l

IMAGE_NAME="$INPUT_GCR_HOST/$GOOGLE_PROJECT_ID/$INPUT_IMAGE_NAME:$INPUT_IMAGE_TAG"

echo "Building image $IMAGE_NAME"
docker build -t $IMAGE_NAME .
echo "Done"

echo "Pushing image $IMAGE_NAME"
docker push $IMAGE_NAME
echo "Done"
