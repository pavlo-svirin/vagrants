#!/bin/bash -eu
# provision.sh -- Install Apache and a test PHP script
#sudo rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-6 

sudo apt-get install -y apache2 libapache2-mod-php5
service apache2 start 
chkconfig apache2 on

cat > /var/www/html/index.php << EOF
<?php phpinfo(); ?>
EOF
