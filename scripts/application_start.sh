#!/bin/bash

echo 'run application_start.sh: ' >> /home/ec2-user/my-app/aws-node/deploy.log

echo 'stopping PM2' >> /home/ec2-user/my-app/aws-node/deploy.log
PM2_HOME=/etc/.pm2 pm2 stop server.js --name=nodejs-express-app >> /home/ec2-user/my-app/aws-node/deploy.log 

echo 'pm2 restart nodejs-express-app' >> /home/ec2-user/my-app/aws-node/deploy.log
PM2_HOME=/etc/.pm2 pm2 start server.js --name=nodejs-express-app >> /home/ec2-user/my-app/aws-node/deploy.log 