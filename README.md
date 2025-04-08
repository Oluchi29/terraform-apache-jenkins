# terraform-apache-jenkins
a project to automate a jenkinsfile using terraform nd using the jenkins pipeline to install apache using terraform

on the infra folder when running the terraform init the backend threw error which i resolved by deleting what was in the bucket using the below command

aws s3 rm s3://lulu-1985-bucket --recursive 
after which i re-run the terraform init