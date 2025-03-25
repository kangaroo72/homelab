whiptail --title "Willkommen" --msgbox "Dieses Skript installiert einen Debian Container." 8 78
LXCID=$(whiptail --inputbox "Welche ID soll der Container haben?" 8 39 --title "LXC ID" 3>&1 1>&2 2>&3)
LXCRA=$(whiptail --inputbox "Wievel RAM (in M) soll der LXC haben?" 8 39 --title "LXC RAM" 3>&1 1>&2 2>&3)
LXCCP=$(whiptail --inputbox "Wieviel Cores soll der Container haben?" 8 39 --title "LXC Cores" 3>&1 1>&2 2>&3)
LXCPS=$(whiptail --inputbox "Welches Passwort soll der Container haben?" 8 39 --title "LXC Passwort" 3>&1 1>&2 2>&3)
LXCHN=$(whiptail --inputbox "Welchen Hostname soll der Container haben?" 8 39 --title "LXC Hostname" 3>&1 1>&2 2>&3)
LXCIP=$(whiptail --inputbox "Welche IP-Adresse (CIDR) soll der Container haben?" 8 39 --title "IP-Adresse" 3>&1 1>&2 2>&3)
LXCGW=$(whiptail --inputbox "Welches Gateway soll der Container haben?" 8 39 --title "Gateway" 3>&1 1>&2 2>&3)
LXCLU=$(whiptail --inputbox "Welchen Linuxuser soll ich anlegen?" 8 39 --title "Linux-User" 3>&1 1>&2 2>&3)
LXCPW=$(whiptail --inputbox "Welches Passwort soll der User haben?" 8 39 --title "Linux-Passwort" 3>&1 1>&2 2>&3)
LXCDO=$(whiptail --inputbox "Welches Domain soll die Instanz haben?" 8 39 --title "Domain" 3>&1 1>&2 2>&3)
LXCPR=$(whiptail --inputbox "Bitte die IP-Adresse des Trusted Proxies eingeben" 8 39 --title "Trusted Proxxy" 3>&1 1>&2 2>&3)
LXCNA=$(whiptail --inputbox "Bitte den Admin-User für Nextcloud eingeben" 8 39 --title "Nextcloud-Admin-User" 3>&1 1>&2 2>&3)
LXCNP=$(whiptail --inputbox "Bitte das Passwort für den Admin-User eingeben" 8 39 --title "Nextcloud-Admin-Pass" 3>&1 1>&2 2>&3)
pct create $LXCID /var/lib/vz/template/cache/debian-12-standard_12.7-1_amd64.tar.zst \
-arch amd64 \
-ostype debian \
-hostname $LXCHN \
-cores $LXCCP \
-memory $LXCRA \
-swap 512 \
-storage local-lvm \
-password $LXCPS \
-features mount=cifs,nesting=1 \
-net0 name=eth0,bridge=vmbr0,gw=$LXCGW,ip=$LXCIP,type=veth \
-unprivileged 1 \
pct start $LXCID && \
sleep 10 && \
pct resize $LXCID rootfs 20G && \
pct exec $LXCID -- bash -c "apt update && \
apt upgrade -y && \
apt install -y curl dnsutils nano sudo wget && \
useradd -m -s '/bin/bash' $LXCLU && \
echo $LXCLU:$LXCPW | chpasswd && \
usermod -aG sudo $LXCLU && \
wget -O zero.sh 'https://raw.githubusercontent.com/kangaroo72/homelab/refs/heads/main/nextcloud/proxmox/script/zero.sh'  && \
wget -O zero.cfg 'https://raw.githubusercontent.com/kangaroo72/homelab/refs/heads/main/nextcloud/proxmox/script/zero.cfg' && \
sed -i 's/ihre.clouddomain.de/$LXCDO/g' zero.cfg && \
chmod +x zero.sh && \
bash zero.sh && \
exit"
