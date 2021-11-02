# quest
This project is a sample web app that is build using docker and hosted in AWS Ec2 instance using terraform
### Steps to run locally
#### Prerequisites
- Docker
```
cd quest/quest_code
docker build -t quest-app
docker run -p 3000:3000 -t quest-app 
```
check `http://localhost:3000` for the app


### Steps to deploy in AWS
#### Prerequisites 
- aws cli
- VPC Setup
```
terraform init
# to start the environment
terraform apply
# to clean the environment
terraform destroy
```
