#!/bin/bash
# apt-get install -y nginx
sudo su
apt-get update
apt-get install -y vim

apt-get install -y openjdk-7-jre-headless

apt-get install -y git
apt-get install -y unzip
apt-get install -y maven
apt-get install -y gradle

wget "https://download.go.cd/gocd-deb/go-server-16.1.0-2855.deb"
wget "https://download.go.cd/gocd-deb/go-agent-16.1.0-2855.deb"
dpkg -i go-agent-16.1.0-2855.deb
dpkg -i go-server-16.1.0-2855.deb

wget --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u5-b13/jdk-8u5-linux-x64.tar.gz
mkdir /opt/jdk
tar -zxf jdk-8u5-linux-x64.tar.gz -C /opt/jdk

su go
yes | cp -f /vagrant/go-agent /etc/default/
exit

/etc/init.d/go-agent start

exit

# sudo service nginx start
