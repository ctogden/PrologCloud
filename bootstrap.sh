#!/usr/bin/env bash

sudo apt-get update
sudo apt-get install -y vim
sudo apt-get install -y openjdk-7-jdk
export JAVA_HOME=/usr/lib/jvm/java-7-openjdk-i386
export PATH=${PATH}:${JAVA_HOME}/bin

# We'll use nginx as our server
sudo apt-get install -y nginx
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

# install python libs
sudo apt-get install -y python-pip
sudo pip install flask
sudo pip install py4j
sudo apt-get install -y gunicorn

# not very secure
sudo chmod -R 777 /usr/bin/XSB

