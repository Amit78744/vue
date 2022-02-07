#!/bin/bash
source /home/ec2-user/.bash_profile
#give permission for everything in the vue.js directory
sudo chown -R ec2-user /var/www/html

#navigate into our working directory where we have all our github files
cd /var/www/html/vue

#add npm and node to path

#install node modules
nvm install 14.4.0
npm install
npm run build