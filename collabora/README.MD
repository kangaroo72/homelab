Required app for usage = Nextcloud Office (actual 7.0.1). Maybe installed by default with Nextcloud Hub

# Collabora Office (Traefik 2) - last test: 2022-11-08

Collabora-Docker-Compose-File (tested with Nextcloud 25)

Admin-URL= https://your.officedomain.tld/browser/dist/admin/admin.html

# Usage:

Before starting, customize the .env-file with your values.

The yml-file uses IPv4 to prevent problems with german Cable-Provider Vodafone (yml-file line 16).

2022-11-08: Added Nextcloud-Domain to .env-File

WIP: Todo, set env for user/pass of admin-site

# Hier geht es um den Collabora-Documentserver


01. Pakete aktualisieren und installieren

```
sudo apt update
sudo apt upgrade -y
sudo apt install subversion -y
```

02. Traefik-Verzeichnis aus GIT klonen

```
cd ~/homelab
svn checkout https://github.com/kangaroo72/homelab.git/trunk/collabora
```

03. Username, Passwort, Office-Domain und Nextcloud-Domain in der .env anpassen


04. Die Nextcloud-App "Nextcloud Office" installieren

Dort in den Einstellungen den eigenen Server aktivieren und die office-Domain eintragen und auf Save klicken.
