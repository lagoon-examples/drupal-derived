FROM bomoko/drupalbase-cli

COPY modules /app/web/modules/custom
COPY themes /app/web/themes/custom
COPY config /app/config/sync