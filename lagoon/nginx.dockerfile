ARG CLI_IMAGE
FROM ${CLI_IMAGE} AS cli

FROM ghcr.io/lagoon-examples/drupal-base-image/nginx

COPY --from=cli /app /app

# Define where the Drupal Root is located
ENV WEBROOT=web
