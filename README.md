# Build Docker Image and Push into Google Container Registry

## Inputs

### `docker_image_name`

Docker Image Name

Name of the image. Should be specified without domain and project.

### `docker_image_tag`

Image tag to set for the built image.

### `docker_context`

Path to the context directory (containing the Dockerfile).

Default: `.`

### `gcr_host`

Google Container Registry Host

Default: `gcr.io`

### `gcr_project_id`

Google Cloud Project ID.

### `gcr_service_key`

Google Cloud Service Key (JSON).

## Example usage

```ylm
uses: Industrial/push-docker-gcr
with:
  docker_image_name: api
  docker_image_tag: latest
  docker_context: ./services/api
  gcr_host: gcr.io
  gcr_project_id: ${{ secrets.GCLOUD_PROJECT_ID }}
  gcr_service_key: ${{ secrets.GCLOUD_SERVICE_KEY }}
```
