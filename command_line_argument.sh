#!/bin/bash

#variable declaration
PACKAGE='httpd wget unzip'
SVC='httpd'
#URL='https://www.tooplate.com/zip-templates/2130_waso_strategy.zip'
#ARTIFAC_NAME='2130_waso_strategy'
TEMP_DIR='/tmp/webfiles'

#installing dependencies
echo '##################'
echo 'installing packaging'
echo '##################'

sudo yum install $PACKAGE -y > /dev/null
echo

#start and enable the service
echo '##################'
echo 'start and enable httpd service'
echo '##################'
sudo systemctl start $SVC
sudo systemctl enable $SVC
echo

#creating temp. directory
echo '##################'
echo 'starting artifact deployment'
echo '##################'
mkdir -p $TEMP_DIR
cd $TEMP_DIR
echo

wget $1 > /dev/null
unzip $2.zip > /dev/null
sudo cp -r $2/* /var/www/html/
echo

#bounce services
echo '##################'
echo 'restarting httpd service'
echo '##################'
systemctl restart $SVC
echo

#clean up
echo '##################'
echo 'removing temporary files'
echo '##################'
rm -rf $TEMP_DIR
echo

sudo systemctl status $SVC
ls /var/www/html



