pct create 208 /var/lib/vz/template/cache/debian-12-standard_12.7-1_amd64.tar.zst \
-arch amd64 \
-ostype debian \
-hostname pnc-test-lxc \
-cores 2 \
-memory 8192 \
-swap 512 \
-storage local-lvm \
-password testpilot \
-features mount=cifs,nesting=1 \
-net0 name=eth0,bridge=vmbr0,gw=192.168.200.1,ip=192.168.200.208/24,type=veth && \
pct start 208 && \
sleep 10 && \
pct resize 208 rootfs 20G && \
pct exec 208 -- bash -c "apt update && \
apt upgrade -y && \
apt install -y curl dnsutils nano sudo wget && \
useradd -m -s '/bin/bash' admin && \
echo 'admin:testpilot' | chpasswd && \
usermod -aG sudo admin && \
wget -O zero.sh 'https://codeberg.org/criegerde/nextcloud-zero/raw/branch/master/debian.sh'  && \
wget -O zero.cfg 'https://codeberg.org/criegerde/nextcloud-zero/raw/branch/master/zero_v2.cfg' && \
sed -i 's/ihre.clouddomain.de/pnc-test.escher.cc/g' zero.cfg && \
sed -i 's/DATABASE="m"/DATABASE="p"/g' zero.cfg && \
chmod +x zero.sh && \
bash zero.sh && \
exit"
