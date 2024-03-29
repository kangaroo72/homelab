# Traefik ist ein Proxy und sollte als allererstes installiert werden. Außerdem kümmert sich Traefik automatisch um die SSL-Zertifikate.
Letzter Test mit Traefik 2.9.10 am 01.08.2023

01. Docker-Netzwerk anlegen

```
docker network create traefik_proxy
```

02. Pakete installieren

```
sudo apt install apache2-utils -y
sudo apt install subversion -y
```

03. Arbeitsverzeichnis für Homelab anlegen

```
mkdir ~/homelab
```

04. Traefik-Verzeichnis aus GIT klonen

```
cd ~/homelab
svn checkout https://github.com/kangaroo72/homelab.git/trunk/traefik
```

05. Korrektur der acme.json + Berechtiung anpassen

```
rm ~/homelab/traefik/config/ACME/acme.json
touch ~/homelab/traefik/config/ACME/acme.json
chmod 600 ~/homelab/traefik/config/ACME/acme.json
```

06. Domain anpassen

In der docker-compose.yml passt ihr bitte eure domain an (traefik.example.com)

07. Zugangsdaten für Traefik definieren

```
echo $(htpasswd -nbB benutzer "passwort") | sed -e s/\\$/\\$\\$/g
```

Den Ausgegebenen Token dann in die docker-compose.yml eingeben.

Beispiel:

  ```
      - "traefik.http.middlewares.auth.basicauth.users=micky:$$2y$$05$$oxXq18YikZO/bZBvZb2DNOTGXOgAqEORk9nMvJ8fGEdnwIUHnaT9i"
  ```

08. in der Datei traefik.toml editiert ihr bitte noch eure EMail-Adresse

09. Traefik starten mit

```
docker compose up -d
```
