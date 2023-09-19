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

Das Admin-Portal erreicht ihr unter https://your.officedomain.tld/browser/dist/admin/admin.html
