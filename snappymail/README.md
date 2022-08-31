# snappymail-docker
SnappyMail with docker-compose

1. Download the latest snappymail-release -> https://github.com/the-djmaze/snappymail/releases
2. Unzip latest snappymail relase in the `app` folder
3. Run `UID_GID="$(id -u):$(id -g)" docker-compose up`
4. Snappymail is reachable under `localhost:8080`

If wanted, remove user from `docker-compose.yml` and set correct permissions for
the app folder manually.
