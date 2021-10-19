#!/bin/bash

#give permission for everything in the vue.js directory
sudo chown -R ec2-user /var/www/html

#navigate into our working directory where we have all our github files
cd /var/www/html/vue

#install node modules
npm install

#start to build our vue.js app in the background
npm run build > app.out.log 2> app.err.log < /dev/null &