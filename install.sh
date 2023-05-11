#!/usr/bin/env bash
sudo wget -qO /etc/update-motd.d/00-motd https://raw.githubusercontent.com/kenrad24/motd/main/motd.sh &&\
sudo chmod -x /etc/update-motd.d/* &&\
sudo chmod +x /etc/update-motd.d/00-motd &&\
sudo sed -i 's/#PrintLastLog yes/PrintLastLog no/' /etc/ssh/sshd_config &&\
sudo sed -i 's/PrintLastLog yes/PrintLastLog no/' /etc/ssh/sshd_config &&\
sudo systemctl restart sshd