#!/bin/bash

echo 'run application_start.sh: ' >> /home/ec2-user/my-app/aws-node/deploy.log

echo 'stopping PM2' >> /home/ec2-user/my-app/aws-node/deploy.log
PM2_HOME=/etc/.pm2 pm2 stop nodejs-express-app >> /home/ec2-user/my-app/aws-node/deploy.log 

cd /home/ec2-user/my-app/aws-node/
echo 'pm2 start nodejs-express-app' >> /home/ec2-user/my-app/aws-node/deploy.log
PM2_HOME=/etc/.pm2 pm2 start server.js --name=nodejs-express-app >> /home/ec2-user/my-app/aws-node/deploy.log 

pwd >> /home/ec2-user/my-app/aws-node/deploy.log
ls >> /home/ec2-user/my-app/aws-node/deploy.log