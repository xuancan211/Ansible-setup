#!/bin/bash
#create repo httpd
mkdir /u01/RH
mount $1 /u01/RH -t iso9660 -o loop
echo -e '[test]\nname=base\nbaseurl=file://///u01/RH\ngpqcheck=0\nenable=0' >> /etc/yum.repos.d/base.repo
yum list
yum install -y httpd
systemctl start httpd
systemctl status httpd
yum install -y createrepo
yum install -y yum-utils
mkdir -p /var/www/html/repos/base
reposync -g -l -d -m --repoid=base --newest-only --download-metadata --download-path=/var/www/html/repos/
createrepo /var/www/html