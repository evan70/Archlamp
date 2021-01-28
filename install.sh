#!/bin/bash


#get the necessary rpms for Lamp server
sudo pacman -S mysql apache php php-apache
#allow service http & https

#start httpd
 sudo systemctl start httpd 

FILE="/home/success"
#setup secure mysql database start mariadb

 mysql_install_db --user=mysql --basedir=/usr --datadir=/var/lib/mysql
 systemctl start mariadb
 sudo mysql_secure_installation
echo ""
echo ""
#temporarely stops httpd/mariadb and redirects success input into success file

Appendthis >> /etc/httpd/conf/httpd.conf

 sudo systemctl stop httpd
 sudo systemctl stop mariadb 0>> /home/success
#checks to see if success file exist
if [[ -f $FILE ]];then
	 echo -e "  Lamp install was a successful,\nnow make Server script an executable\n    and sudo ./server up/down "
	 echo ""	 
fi

sudo rm -rf /home/success
exit

