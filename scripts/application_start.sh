#!/bin/bash

#give permission for everything in the vue.js directory
sudo chown -R ec2-user /var/www/html

#navigate into our working directory where we have all our github files
cd /var/www/html/maidanlah-customer

#add npm and node to path
export NVM_DIR="$HOME/.nvm"	
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # loads nvm	
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # loads nvm bash_completion (node is in path now)

#install node modules
npm install
npm run build