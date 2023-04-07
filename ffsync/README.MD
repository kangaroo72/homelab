# Firefox Syncserver

Bei ffsync handelt es sich um einen sog. Firefox-Syncserver.
Damit können plattformübergreifend Bookmarks, AddOns, Passwörter, etc. von Firefox synchronisiert werden.

## Installation

```create volume ffsync```

```svn checkout https://github.com/kangaroo72/homelab.git/trunk/ffsync```

Erstellt ein Secret:

```head -c 20 /dev/urandom | sha1sum```

und tragt das in der .env-Datei ein.

Jetzt noch die Domain in der .env-Datei eintragen und dann ffsync starten

```docker compose up -d```

## Konfiguration des Rechners

Ihr benötigt ein Mozilla-Konto. Habt ihr noch keins, könnt ihr das [hier](https://accounts.firefox.com/) anlegen.

Im Firefox gebt ihr in der Addressleite folgendes ein:

```about:config```

und bestätigt die Warnung.

Sucht hier nach "sync". Ihr werdet den Token "Identity.sync.tokenserver.url" finden. Diesen bitte doppelklicken und folgendes eintragen.

```https:/sync.domain.tld/token/1.0/sync/1.5```

Natürlich ersetzt ihr sync.domain.tld durch eure gewählte Domain.

Melde euch jetzt im Firefox mit eurem Konto an. Die Synchronisation wird funktionieren.
