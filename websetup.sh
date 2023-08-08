#!/bin/bash

#installing dependencies
echo '##################'
echo 'installing packaging'
echo '##################'

sudo yum install wget unzip httpd -y > /dev/null
echo

#start and enable the service
echo '##################'
echo 'start and enable httpd service'
echo '##################'
sudo systemctl start httpd
sudo systemctl enable httpd
echo

#creating temp. directory
echo '##################'
echo 'starting artifact deployment'
echo '##################'
mkdir -p /tmp/webfiles
cd /tmp/webfiles
echo

wget https://www.tooplate.com/zip-templates/2130_waso_strategy.zip > /dev/null
unzip 2130_waso_strategy.zip > /dev/null
sudo cp -r 2130_waso_strategy/* /var/www/html/
echo

#bounce services
echo '##################'
echo 'restarting httpd service'
echo '##################'
systemctl restart httpd
echo

#clean up
echo '##################'
echo 'removing temporary files'
echo '##################'
rm -rf /tmp/webfiles
echo

sudo systemctl status httpd
ls /var/www/html



