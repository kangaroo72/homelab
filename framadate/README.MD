Framadate ist das  ultimative Tool, um gemeinsame Termine oder Umfragen abzustimmen.
```
mkdir -p ~/homelab/framadate
cd ~/homelab/framadate
```
hier legt ihr die docker-compose.yml, die .env und die config.php aus dem Repository rein.
In der .env-Datei müsst ihr die eingegeben Werte nach euren Wünschen anpassen.
```
MYSQL_ROOT_PASS=sql_root_passwort
MYSQL_DB=sql_datenbank
MYSQL_USER=sql_user
MYSQL_PASS=sql_pass
ADMIN_USER=framdateuser
ADMIN_PASS=framadatepass
DOMAIN=sub.deinedomain.tld
```

