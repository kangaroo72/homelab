# snappymail-docker
SnappyMail with docker-compose

1. Unzip latest snappymail relase in the `app` folder
2. Run `UID_GID="$(id -u):$(id -g)" docker-compose up`
3. Snappymail is reachable under `localhost:8080`

If wanted, remove user from `docker-compose.yml` and set correct permissions for
the app folder manually.
