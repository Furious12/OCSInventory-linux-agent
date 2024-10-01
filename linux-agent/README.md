##  Unix Agent installation
Do you want to configure the agent?
Please enter 'y' or 'n'?> [y] 
Where do you want to write the configuration file?
 0 -> /etc/ocsinventory
 1 -> /usr/local/etc/ocsinventory
 2 -> /etc/ocsinventory-agent
?>  2
Should the old unix_agent settings be imported?
Please enter 'y' or 'n'?> [y] 
[info] The config file will be written in /etc/ocsinventory-agent/ocsinventory-agent.cfg,
What is the address of your ocs server?>  https://inventory.gov.supersim.com.br/ocsinventory
Do you need credential for the server? (You probably don't)
Please enter 'y' or 'n'?> [n] 
Do you want to apply an administrative tag on this machine?
Please enter 'y' or 'n'?> [y] 
tag?>  00649
Do yo want to install the cron task in /etc/cron.d?
Please enter 'y' or 'n'?> [y] 
Where do you want the agent to store its files? (You probably don't need to change it)?> [/var/lib/ocsinventory-agent] 
Do you want to create the /var/lib/ocsinventory-agent directory?

Please enter 'y' or 'n'?> [y] 
Should I remove the old unix_agent?
Please enter 'y' or 'n'?> [n] 
Do you want to activate debug configuration option?
Please enter 'y' or 'n'?> [y] 
Do you want to use OCS Inventory NG UNix Unified agent log file?
Please enter 'y' or 'n'?> [y] 
Specify log file path you want to use?>  /etc/ocsinventory-agent/ocs_agent.log
Do you want disable SSL CA verification configuration option (not recommended)?
Please enter 'y' or 'n'?> [n] 
Do you want to set CA certificates file path?
Please enter 'y' or 'n'?> [y] 
Specify CA certificates file path?>  /etc/ocsinventory-agent/cacert.pem
Do you want disable software inventory?
Please enter 'y' or 'n'?> [n] 
Do you want to use OCS-Inventory software deployment feature?
Please enter 'y' or 'n'?> [y] 
Do you want to use OCS-Inventory SNMP scans feature?
Please enter 'y' or 'n'?> [y] 
Do you want to send an inventory of this machine?
Please enter 'y' or 'n'?> [y] 