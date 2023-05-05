In den Ordner der Homelabumgebung wechseln
```
cd ~/homelab
```
Jitsi runterladen und entpacken
```
wget https://github.com/jitsi/docker-jitsi-meet/archive/refs/tags/stable-8615.tar.gz
tar -xvzf stable*
```
Das Archiv löschen, das entpackte Arbeitsverzeichnis umbenennen und dort hin wechseln
```
rm stable-8615.tar.gz
mv docker-jitsi-meet-stable-8615 jitsi
cd jitsi
```
Die Environment-Datei aktivieren und sichere Passwörter definieren
```
cp env.example .env
./gen-passwords.sh
```
Konfigurationsordner anlegen
```
mkdir -p ~/.jitsi-meet-cfg/{web,transcripts,prosody/config,prosody/prosody-plugins-custom,jicofo,jvb,jigasi,jibri}
```
docker-compose.yml sichern und die angepasste runterladen
```
mv docker-compose.yml docker-compose.yml.bak
wget https://raw.githubusercontent.com/kangaroo72/homelab/main/jitsi/docker-compose.yml
```

Todos:

1. In der docker-compose.yml eure Domain anpassen
2. In der .env die PUBLIC_URL anpassen
