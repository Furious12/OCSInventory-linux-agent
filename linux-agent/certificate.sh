#!/bin/sh
URL="inventory.gov.supersim.com.br"

true | openssl s_client -connect $URL:443 -servername $URL 2>/dev/null | openssl x509 > /etc/ocsinventory-agent/cacert.pem

exit
