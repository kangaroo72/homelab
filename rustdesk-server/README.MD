Hier beschreibe ich die Installation des Rustdesk-Servers

Ich nutze die Docker-Variante mit dem aktuellsten Image.
Bevor ihr den Server nutzen könnt, müsst ihr im docker-compose.yml-file die domain.tld anpassen
Für den Server müssen folgende Ports offen sein:
*21115 - 21119 (TCP)
*21116 (UDP
Solltet ihr später mal eure Server-Version auslesen wollen, gelingt diese über docker exec hbbr hbbr -V
