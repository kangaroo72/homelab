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
# Docker-Setup-info:
Please set your own Traefik-Labels (here "vaultwarden") to your value
