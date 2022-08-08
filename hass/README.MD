# Home Assistant

My homeserver works on 192.168.200.10 (Traefik), and Homeassistant is running on 192.168.200.6 (Raspberry).
You need to configure Traefik and Homeassistant for this setup.

Homeassistant:

Add the following code to your configuration.yaml

```
http:
  ip_ban_enabled: true
  login_attempts_threshold: 5
  use_x_forwarded_for: true
  trusted_proxies:
    - 192.168.200.0/24 # Local LAN Subnet
    - 172.21.0.0/24 # Docker Subnet (Traefik_Proxy)
    - 172.22.0.0/24 # Docker Subnet (Default)
    - 127.0.0.1
```
Traefik:

Add the following code to your dynamic.yml

```
  routers:
    home-assistant:
      service: home-assistant
      rule: "Host(`hass.domain.tld`)"   # Change to your Homeassistant-Sub-domain
      entryPoints:
        - websecure
      tls:
        certResolver: default
  services:
    home-assistant:
      loadBalancer:
        servers:
          - url: http://192.168.200.6:8123
```
