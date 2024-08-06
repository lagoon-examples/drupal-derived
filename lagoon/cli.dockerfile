FROM ghcr.io/lagoon-examples/drupal-base-image/cli

COPY modules /app/web/modules/custom
COPY themes /app/web/themes/custom
COPY config /app/config/sync