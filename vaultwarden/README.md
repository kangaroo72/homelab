# Vaultwarden
Vaultwarden ist ein Fork von Bitwarden mit höchster Sicherheit und einem massiven Funktionsumfang.
Andere Datenbanken lassen sich verwenden, aber wir setzen hier auf SQLite.

# Wichtig
Vaultwarden ist ein unabhängigs Projekt. Also wenn Supportanfragen auftauchen, richtet diese bitte **unbedingt** an das [Vaultwarden-Team](https://github.com/dani-garcia/vaultwarden).

# Anleitung

01. Volume "vw-data" erstellen
```
docker volume create vw-data
```
02. Den Argon-2-Token erstellen (für das Admin-Passwort) xxxxxxxx = Das Admin-Passwort im Klartext (wird in diesem Prozess verschlüsselt)
```
echo -n "xxxxxxx" | argon2 "$(openssl rand -base64 32)" -e -id -k 65540 -t 3 -p 4 | sed 's#\$#\$\$#g'
```
03. Den erstellten Argon-2-Token in das .env-file (Zeile 1) eintragen.

04. Deine Wunsch-Domain im .env-file (Zeile 2) eitnragen.

05. Vaultwarden starten

```
docker compose up -d
```

# Wichtig: Deine Datensicherung

The data from your password-safe are stored within volumes (vw-data) inside the container.
It makes sense to setup a cronjob for backup:

```
30 02 * * * root /usr/bin/docker run --rm -v vw-data:/data -v /path_to_your_backups:/backup alpine tar -czvf /backup/$(date +\%Y\%m\%d)_vaultwarden.tgz /data
```

## Not able to login into Admin-Panel??
If you have used the Admin-Panel before w/o Argon-2-Token, your **prior** config will be used.
Add the Argon-2-Token the yml-file as mentioned, log into Admin-Panel with prior-password and overwrite there.
That's it.
