# Vaultwarden
It's a fork form Bitwarden. You don't need a MySQL-DB, 'cause we're using SQLite.

# Important!
If you're facing issues, don't contact the Bitwarden-Devs, pls contact the Vaultwarden-Team (https://github.com/dani-garcia/vaultwarden)

# Container-Storage
The data from your password-safe are stored within volumes (vw-data) inside the container.

#Backup-Idea using Cronjob on Docker-Host

```
30 02 * * * root /usr/bin/docker run --rm -v vw-data:/data -v /path_to_your_backups:/backup alpine tar -czvf /backup/$(date +\%Y\%m\%d)_vaultwarden.tgz /data
```

# Todo's

01. Create your "vw-data" volume
```
docker volume create vw-data
```
02. Create your Argon-2-Token
```
echo -n "xxxxxxx" | argon2 "$(openssl rand -base64 32)" -e -id -k 65540 -t 3 -p 4 | sed 's#\$#\$\$#g'
```
03. Paste the result in the .env-file
04. Type in the Vaultwarden-Domain in the .env-file
