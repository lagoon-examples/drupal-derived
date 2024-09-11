FROM ghcr.io/lagoon-examples/drupal-base-image/cli:24.9.11 AS cli

COPY modules /app/web/modules/custom
COPY themes /app/web/themes/custom
COPY config /app/config/sync

FROM ghcr.io/lagoon-examples/drupal-base-image/nginx:24.9.11 AS nginx

COPY --from=cli /app /app

ENV WEBROOT=web

FROM ghcr.io/lagoon-examples/drupal-base-image/php:24.9.11 AS php
 
COPY --from=cli /app /app
