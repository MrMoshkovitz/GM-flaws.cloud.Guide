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
  - [Level 2 -  AWS Authenticated Enumeration](#level-2----aws-authenticated-enumeration)
    - [Level 2 Prerequisites](#level-2-prerequisites)
    - [Level 2 Tools](#level-2-tools)
    - [Commands Used in Level 2](#commands-used-in-level-2)
  - [Important Notes from Level 2](#important-notes-from-level-2)









## Challenge Prerequisites
1. AWS Authenticated Enumeration
   1. AWS CLI installed
      1. [installation file script](./Flaws-Scripts/aws_cli_install.sh)
   2. AWS CLI Profile configured
      1. [configuration file script](./Flaws-Scripts/aws_cli_configure.sh)
   3. Create AWS S3Admin Group
      1. [Group URL](https://us-east-1.console.aws.amazon.com/iamv2/home?region=us-west-2#/groups/details/S3Admins?section=permissions "S3Admins")
   4. Attach AWS AmazonS3FullAccess Policy To S3Admin Group
      1. [Policy URL](https://us-east-1.console.aws.amazon.com/iam/home#/policies/arn:aws:iam::aws:policy/AmazonS3FullAccess$jsonEditor "AmazonS3FullAccess")


## Challenge Tools
1. AWS Enumeration Authenticated
   1. [`aws s3 ls`](https://docs.aws.amazon.com/cli/latest/reference/s3/ls.html "AWS S3 List Command")
   2. [`curl`](https://curl.haxx.se/ "Curl Command Line Tool")
   3. ['grep'](https://www.gnu.org/software/grep/ "Grep Command Line Tool")


## Guide Table of Contents







## Commands Used in Challenge 
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


## Important Notes from Challenge
| 2. :pushpin: Pin                 | Content                                                                                                                                                     |
|-------------------------------|:----------------------------------------------------------------------------------------------------------------------------------------|
| 2.0. :pushpin: AWS Authenticated Enumeration                 | All Authenticated Access to AWS S3 Buckets                                                                
|-------------------------------|:----------------------------------------------------------------------------------------------------------------------------------------|
| 2.1. :pushpin:  Level 2 URL          | `http://level2-c8b217a33fcf1f839f6f1f73a00a9ae7.flaws.cloud/`                                                                         |
| 2.1. :pushpin:  Level 2 Bucket URL          | `s3://http://level2-c8b217a33fcf1f839f6f1f73a00a9ae7.flaws.cloud/`                                                                         |
| 2.2. :pushpin:  S3Admins Group       | [S3Admins](https://us-east-1.console.aws.amazon.com/iamv2/home?region=us-west-2#/groups/S3Admins?section=permissions)                 |
| 3.1. :pushpin:  Level 3 URL          | [Level 3 URL](http://level3-9afd3927f195e10225021a578e6f78df.flaws.cloud)                                                             |
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




