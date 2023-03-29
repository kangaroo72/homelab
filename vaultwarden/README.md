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
In the .env-File, please set your admin-token and your domain

# Setup-Guide 2023-03-30

Line 14: Add your Argon2-Token

Example:
```
echo -n "xxxxxxx" | argon2 "$(openssl rand -base64 32)" -e -id -k 65540 -t 3 -p 4 | sed 's#\$#\$\$#g'
´´´
Change xxxxxx to your Admin-Panel-Password

Here is the result:
```
$$argon2id$$v=19$$m=65540,t=3,p=4$$VnVjSkdHWFVWU2Npc3FhcUN5SGl3dXpWcm9ZUUluY0xBOVg4RzViRVpWdz0$$vPY2uo3gIOU0A9iYeiOYOhleB2huC69i8WHQVzO+2ro
´´´
Add this to Line 14 like this:
```
      - ADMIN_TOKEN=$$argon2id$$v=19$$m=65540,t=3,p=4$$VnVjSkdHWFVWU2Npc3FhcUN5SGl3dXpWcm9ZUUluY0xBOVg4RzViRVpWdz0$$vPY2uo3gIOU0A9iYeiOYOhleB2huC69i8WHQVzO+2ro
