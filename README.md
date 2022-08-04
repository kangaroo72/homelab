# home-lab

An archive of my home-server setup.

We're starting with Traefik. Traefik is a reverse-proxy, who's sending the incoming requests to container like Nextcloud, Vaultwarden, ...

My base is an Ubuntu 22.04LTS-System. You have to install Docker like this:

curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh

for managing your server, the best way is to have an openssh-server installed.

The next step is setting up Traefik. Look in the folder for that.
