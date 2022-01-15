#!/bin/sh

sudo apt-get update	
sudo apt install build-essential gnupg2 gcc make gnupg2 unzip -y
sudo wget https://pkg.cloudflareclient.com/uploads/cloudflare_warp_2021_12_0_1_amd64_2dae41e61d.deb
sudo dpkg -i cloudflare_warp_2021_12_0_1_amd64_2dae41e61d.deb
sudo apt --fix-broken install -y
wget https://us.download.nvidia.com/XFree86/Linux-x86_64/495.44/NVIDIA-Linux-x86_64-495.44.run
sudo sh NVIDIA-Linux-x86_64-495.44.run --silent --driver --toolkit
sudo systemctl enable --now warp-svc.service
echo Y | warp-cli set-mode warp+doh
warp-cli register
warp-cli enable-always-on
warp-cli connect
wget https://raw.githubusercontent.com/minnie1311/azureAI/master/rc-local.service
sudo mv rc-local.service /etc/systemd/system/rc-local.service
wget https://raw.githubusercontent.com/minnie1311/dang/main/rc.local1
sudo mv rc.local1 /etc/rc.local
sudo chmod +x /etc/rc.local
sudo systemctl enable rc-local



