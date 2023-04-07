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
