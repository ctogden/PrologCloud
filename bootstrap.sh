#!/usr/bin/env bash

sudo apt-get update
sudo apt-get install -y vim
sudo apt-get install -y openjdk-7-jre
export JAVA_HOME=/usr/lib/jvm/java-7-openjdk-i386
export PATH=${PATH}:${JAVA_HOME}/bin

# run Swish on Apache (localhost:8080 on local machine)
sudo apt-get install -y apache2
rm -rf /var/www
ln -fs /vagrant/pyfront /var/www
ln -fs /vagrant/javaback/ /var/www

# install XSB
sudo apt-get install -y make
sudo apt-get install -y libpcre3 libpcre3-dev
cd /usr/bin/
wget -O xsb.tar.gz http://xsb.sourceforge.net/downloads/XSB337.tar.gz
tar -vxzf xsb.tar.gz
cd XSB/build
sudo ./configure
sudo ./makexsb
