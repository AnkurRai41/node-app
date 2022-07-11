#!/bin/sh
ssh ubuntu@54.197.201.60 <<EOF
    cd ~/node-app
    git pull origin master
    curl -o-   https://raw.githubusercontent.com/creationix/nvm/v0.33.8/install.sh    | bash
    . ~/.nvm/nvm.sh
    nvm install 
    npm install
    npm install -g nodemon pm2
    pm2 restart ecosystem.config.js
    exit
EOF