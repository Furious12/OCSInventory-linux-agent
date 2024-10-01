#!/bin/sh

URL="inventory.gov.supersim.com.br"
FOLDER="/etc/ocsinventory-agent"
VERSION="2.10.2"

#   Removing old files
echo "\n Removing previous installation... \n"
sudo apt purge ocsinventory-agent -y
sudo rm -rf /etc/apt/trusted.gpg.d/ocs*
sudo rm -rf /etc/apt/sources.list.d/ocs*
sudo rm -rf /var/log/ocsinventory-agent.log
sudo rm -rf /var/lib/ocsinventory-agent
sudo rm -rf /etc/ocsinventory-agent
sudo rm -rf /etc/cron.d/ocsinventory*
sudo rm -rf /etc/cron.d/inventory-agent
sudo rm -rf /etc/cron.d/cert-cron
sudo apt clean
sudo apt autoremove -y
sudo apt autoclean
sudo apt update -y

#   Initial configuration
sudo apt update
sudo apt install perl
sudo apt install make
sudo apt install curl
sudo mkdir $FOLDER
sudo cp certificate.sh $FOLDER
cp ./scheduler/ocsinventory-cert /etc/cron.d
cp ./scheduler/ocsinventory-agent2 /etc/cron.d

#   Agent installation
sudo wget -P $FOLDER "https://github.com/OCSInventory-NG/UnixAgent/releases/download/v$VERSION/Ocsinventory-Unix-Agent-$VERSION.tar.gz"
cd $FOLDER

echo "\n Downloading certificate \n"
true | openssl s_client -connect $URL:443 -servername $URL 2>/dev/null | openssl x509 > cacert.pem

echo "\n Installing agent... \n"
sudo tar -xvzf Ocsinventory-Unix-Agent-$VERSION.tar.gz
cd Ocsinventory-Unix-Agent-$VERSION
sudo perl Makefile.PL
sudo make
sudo make install

exit

