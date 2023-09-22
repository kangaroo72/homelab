# home-lab

Hier gibt's keinen Anspruch auf Vollständigkeit. Vieles handelt sich um ein Wissensarchiv für mich oder Leute, die es interessiert. Vielen Dank an @thiloms

Mein System:

Ubuntu 22.04 LTS als Betriebssystem

[Wordpress](https://github.com/kangaroo72/home-lab/tree/main/wordpress) -> https://domain.tld

[Nextcloud](https://github.com/kangaroo72/home-lab/tree/main/nextcloud) -> https://cloud.domain.tld

[Office](https://github.com/kangaroo72/home-lab/tree/main/collabora) -> https://office.domain.tld

[Vaultwarden](https://github.com/kangaroo72/home-lab/tree/main/vaultwarden) -> https://safe.domain.tld

[Traefik](https://github.com/kangaroo72/home-lab/tree/main/traefik) -> https://traefik.domain.tld


Ein frisch installiertes System sollte per SSH erreichbar sein...

Ich richte mein System in folgender Reihenfolge ein....

01. Traefik, 02. Wordpress, 03. Nextcloud, 04. Collabora, 05. Vaultwarden (more apps coming soon...)

Docker muss installiert sein
```
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh
```
Danch geht's mit Traefik weiter...
_____________________________________
WICHTIGE INFO:

Vermeidet bei SQL-Datenbanken unbedingt das Minuszeichen bei Datenbanknamen, Usern oder Passwörtern - macht nur Probleme. Am besten den Unterstrich. Der ist pflegeleicht.
Beispiel:
```
CREATE DATABASE hl_dbname CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci; CREATE USER db_user@"%" identified by 'db_pass'; GRANT ALL PRIVILEGES on hl_dbname.* to db_user@"%"; FLUSH privileges; quit;
```
