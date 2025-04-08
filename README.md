# terraform-apache-jenkins
a project to automate a jenkinsfile using terraform nd using the jenkins pipeline to install apache using terraform

on the infra folder when running the terraform init the backend threw error which i resolved by deleting what was in the bucket using the below command

aws s3 rm s3://lulu-1985-bucket --recursive 
after which i re-run the terraform init

once inside jenkins you go to 
new item - pipeline - ok
Description - check github project - paste the project github url
pipeline - click the drop down and select pipeline script from scm
github path - jenkinsfile
Apply - save



when throwing this error

[Pipeline] sh
+ terraform init
[0m[1mInitializing the backend...[0m
[31m╷[0m[0m
[31m│[0m [0m[1m[31mError: [0m[0m[1mNo valid credential sources found[0m
[31m│[0m [0m
[31m│[0m [0m[0mPlease see https://www.terraform.io/docs/language/settings/backends/s3.html
[31m│[0m [0mfor more information about providing credentials.
[31m│[0m [0m
[31m│[0m [0mError: failed to refresh cached credentials, no EC2 IMDS role found,
[31m│[0m [0moperation error ec2imds: GetMetadata, http response error StatusCode: 404,
[31m│[0m [0mrequest to EC2 IMDS failed
[31m│[0m [0m
[31m╵[0m[0m
[Pipeline] }
[Pipeline] // stage
[Pipeline] stage
[Pipeline] { (Terraform fmt stage)
Stage "Terraform fmt stage" skipped due to earlier failure(s)
[Pipeline] getContext
[Pipeline] }

This usually means Terraform is trying to access AWS but can’t authenticate, and it’s not running on an EC2 instance (or if it is, there's no IAM role assigned)

go ahead and create an iam role in ec2 instance
search for IAM - roles - create roles - aws service - service or use roles - select ec2 - next
Administrator access - next
role name(give the role a name - create)

Go back to ec2 - instance - check d instance - action -modify iam role - iam role - elect the role created - update