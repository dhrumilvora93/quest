#! /bin/bash
yum install git -y && yum install docker -y
service docker start
git clone https://github.com/dhrumilvora93/quest.git 
cd quest/quest_code
docker build -t test .
docker run -p 3000:3000 -t test 