#!/bin/bash
echo 'run after_install.sh: ' >> /home/ec2-user/my-app/aws-node/deploy.log

echo 'cd /home/ec2-user/my-app/aws-node' >> /home/ec2-user/my-app/aws-node/deploy.log
cd /home/ec2-user/my-app/aws-node >> /home/ec2-user/my-app/aws-node/deploy.log

echo 'npm install' >> /home/ec2-user/my-app/aws-node/deploy.log 
npm install >> /home/ec2-user/my-app/aws-node/deploy.log
