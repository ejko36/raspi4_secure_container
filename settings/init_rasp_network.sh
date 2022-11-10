cp ./dhcpcd.conf /etc/.
sudo /etc/init.d/networking restart
sudo reboot


#After reboot, user needs to configure Interfacing Options to enable SSH

#For raspi OS
#sudo raspi-config

#For Ubuntu OS
#sudo systemctl status ssh
#sudo ufw allow ssh
