#! /bin/bash
sudo yum install git -y && sudo yum install docker -y
sudo service docker start
git clone https://github.com/dhrumilvora93/quest.git 
cd quest/quest_code
sudo usermod -a -G docker ec2-user
docker build -t quest-app .
docker run -p 3000:3000 -t quest-app 