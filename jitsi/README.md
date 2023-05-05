Zuerst legen wir den Installationsordner (in der Homelab-Umgebung) und die Konfigurationsordner an.

```
mkdir ~/homelab/jitsi
mkdir -p ~/.jitsi-meet-cfg/{web,transcripts,prosody/config,prosody/prosody-plugins-custom,jicofo,jvb,jigasi,jibri}
```
Dann in das Installationsverzeichnis wechseln, Jitsi runterladen und entpacken (meine letzte Version ist die 8615).
```
cd ~/homelab/jitsi
wget https://github.com/jitsi/docker-jitsi-meet/archive/refs/tags/stable-8615.tar.gz
tar -xvzf stable*
```
