#!/bin/bash
sudo chmod -R 777 /home/ec2-user/express-app

#navigate into working directory where all out github files
cd /home/ec2-user/express-app

#add npm and node to path
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # loads nvm bash_completion (node is in path)

# install node mdules
npm install

# start our node app in the backgrounf
node app.js > app.out.log 2> app.err.log < /dev/null &
