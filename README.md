# home-lab

An archive of my home-server setup.

My environment is:

Ubuntu 22.04 LTS as operating system

[Wordpress](https://github.com/kangaroo72/home-lab/tree/main/wordpress) https://domain.tld

https://cloud.domain.tld -> [Nextcloud](https://github.com/kangaroo72/home-lab/tree/main/nextcloud)
https://office.domain.tld -> Collabora Office (https://github.com/kangaroo72/home-lab/tree/main/collabora)
https://safe.domain.tld -> Vaultwarden (https://github.com/kangaroo72/home-lab/tree/main/vaultwarden)
https://traefik.domain.tld -> Traefik (https://github.com/kangaroo72/home-lab/tree/main/traefik)

Please install openssh-server before starting. Once done, we're starting with..

I'm using the apps in following order...

01. Traefik, 02. Wordpress, 03. Nextcloud, 04. Collabora, 05. Vaultwarden (more apps coming soon...)

Docker-Setup is mandatory before starting:

curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh

Once docker is installed, go ahead with Traefik.
