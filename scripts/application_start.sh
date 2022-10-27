#!/bin/bash

echo 'run application_start.sh: ' >> /home/ec2-user/my-app/aws-node/deploy.log

echo 'pm2 restart nodejs-express-app' >> /home/ec2-user/my-app/aws-node/deploy.log
PM2_HOME=/etc/.pm2 pm2 restart nodejs-express-app >> /home/ec2-user/my-app/aws-node/deploy.log