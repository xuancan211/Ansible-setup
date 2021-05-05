#!/bin/bash
cd setup_file;
yum install -y createrepo_c-libs-0.10.0-20.el7.x86_64.rpm;
yum install -y createrepo_c-devel-0.10.0-20.el7.x86_64.rpm;
yum install -y createrepo_c-0.10.0-20.el7.x86_64.rpm;
yum install -y python2-createrepo_c-0.10.0-20.el7.x86_64.rpm;
yum install -y python2-cryptography-1.7.2-2.el7.x86_64.rpm;
yum install -y pigz-2.3.3-1.el7.centos.x86_64.rpm;
yum install -y python-crypto-2.6.1-1.el7.centos.x86_64.rpm;
yum install -y sshpass-1.06-1.el7.x86_64.rpm;
yum install -y python-jinja2-2.7.2-4.el7.noarch.rpm;
yum install -y ansible-2.9.9-1.el7.ans.noarch.rpm;
