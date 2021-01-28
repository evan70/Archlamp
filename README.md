#chmod u+x install.sh then ./install.sh

#after install.sh script is done comment out this line "#LoadModule mpm_event_module modules/mod_mpm_event.so" in /etc/httpd/conf/httpd.conf file

#next uncomment LoadModule "mpm_prefork_module modules/mod_mpm_prefork.so"

#now you can chmod u+x server then you can execute it like this ./server up/down
