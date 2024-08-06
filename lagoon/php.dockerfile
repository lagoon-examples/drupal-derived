ARG CLI_IMAGE
FROM ${CLI_IMAGE} AS cli

FROM ghcr.io/lagoon-examples/drupal-base-image/php

COPY --from=cli /app /app