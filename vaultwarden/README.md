# Vaultwarden
It's a fork form Bitwarden. You don't need a MySQL-DB, 'cause we're using SQLite.

# Important!
If you're facing issues, don't contact the Bitwarden-Devs, pls contact the Vaultwarden-Team (https://github.com/dani-garcia/vaultwarden)

# Todo's

01. Create your "vw-data" volume
```
docker volume create vw-data
```
02. Create your Argon-2-Token
```
echo -n "xxxxxxx" | argon2 "$(openssl rand -base64 32)" -e -id -k 65540 -t 3 -p 4 | sed 's#\$#\$\$#g'
```
03. Paste the result in the .env-file (Line 1)

04. Type in the Vaultwarden-Domain in the .env-file (Line 2)

05. Fire up your Vaultwarden

```
docker compose up -d
```

# Urgent: Your Backup

The data from your password-safe are stored within volumes (vw-data) inside the container.
It makes sense to setup a cronjob for backup:

```
30 02 * * * root /usr/bin/docker run --rm -v vw-data:/data -v /path_to_your_backups:/backup alpine tar -czvf /backup/$(date +\%Y\%m\%d)_vaultwarden.tgz /data
```

Not able to login into Admin-Panel??
If you have used the Admin-Panel before w/o Argon-2-Token, your prior config will be used.
Add the Argon-2-Token the yml-file as mentioned, log into Admin-Panel with prior-password and overwrite there.
That's it.
