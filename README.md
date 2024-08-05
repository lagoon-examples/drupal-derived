1. docker compose build

Builds according to what's in:

- docker-compose.yml -- this file also runs the following files:

  - lagoon/cli.dockerfile
    - during build, copies contents of /modules, /thems, /config into container

  - lagoon/nginx.dockerfile
    - pulls drupalbase-nginx from the base image for use
    - defines Drupal webroot as /web

  - lagoon/php.dockerfile
    - pulls drupalbase-php from the base image for use

2. docker compose up -d

3. docker compose exec cli composer install

4. docker compose exec cli drush si demo_umami


