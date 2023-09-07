# Vaultwarden
Vaultwarden ist ein Fork von Bitwarden mit höchster Sicherheit und einem massiven Funktionsumfang.
Andere Datenbanken lassen sich verwenden, aber wir setzen hier auf SQLite.
Zuletzt getestet mit Version 1.29.1 am 01.08.2023

Das Admin-Portal erreicht ihr durch aufruf von https://your.domain.tld/admin
Das Default-Passwort lautet "Vault-Admin"

# Wichtig
Vaultwarden ist ein unabhängigs Projekt. Also wenn Supportanfragen auftauchen, richtet diese bitte **unbedingt** an das [Vaultwarden-Team](https://github.com/dani-garcia/vaultwarden).

# Anleitung

01. Volume "vw-data" erstellen
```
docker volume create vw-data
```
02. Vaultwarden-Verzeichnis aus GIT klonen
```
cd ~/homelab
svn checkout https://github.com/kangaroo72/homelab.git/trunk/vaultwarden
```
03. Deine Wunsch-Domain im .env-file (Zeile 2) eitnragen.


04. Vaultwarden starten

```
docker compose up -d
```

# Wichtig: Deine Datensicherung

The data from your password-safe are stored within volumes (vw-data) inside the container.
It makes sense to setup a cronjob for backup:

```
30 02 * * * root /usr/bin/docker run --rm -v vw-data:/data -v /path_to_your_backups:/backup alpine tar -czvf /backup/$(date +\%Y\%m\%d)_vaultwarden.tgz /data
```

