# Build and push docker image to Google Container Registry action

Opinionated github workflow action to build a docker image from Dockerfile
and push the image to Google Continer Registry.

Pass all sensitive data using secrets.

## Inputs

### `service_key`

**Required** Google Service Account Key.

### `gcr_host`

Google Container Registry Host

- gcrp.io (default)
- eu.gcr.ui
- etc

### `image_name`

Name of the image. Should be specified without domain and project.

### `image_tag`

Image tag to set for the built image.

## Example usage

```ylm
uses: raccoondev/push-docker-gcr
with:
  gcr_host: eu.gcr.io
  image_name: my_image
  image_tag: latest
  env:
    GCLOUD_SERVICE_KEY: ${{ secrets.GCLOUD_SERVICE_KEY }}
    GOOGLE_COMPUTE_ZONE: ${{ secrets.GOOGLE_COMPUTE_ZONE }}
    GOOGLE_PROJECT_ID: ${{ secrets.GOOGLE_PROJECT_ID }}
```