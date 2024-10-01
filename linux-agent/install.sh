#!/bin/sh

URL="inventory.gov.supersim.com.br"
FOLDER="/etc/ocsinventory-agent"
VERSION="2.10.2"

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
