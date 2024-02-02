# Rustdesk - Die ultimative Alternative zu Teamviewer, Anydesk & Co

Hier beschreibe ich die Installation des Rustdesk-Servers

Ich nutze die Docker-Variante mit dem aktuellsten Image.

Bevor ihr den Docker-Container starten könnt, habt ihr folgende Todos:

* IN der docker-compose.yml die domain.tld gegen eure Domain austauschen
* TCP Ports öffnen 21115 - 21119
+ UDP Port öffnen 21116


Solltet ihr später mal eure Server-Version auslesen wollen, gelingt diese über
```docker exec hbbr hbbr -V
```
