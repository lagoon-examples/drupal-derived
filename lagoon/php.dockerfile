ARG CLI_IMAGE
FROM ${CLI_IMAGE} AS cli

FROM bomoko/drupalbase-php

COPY --from=cli /app /app