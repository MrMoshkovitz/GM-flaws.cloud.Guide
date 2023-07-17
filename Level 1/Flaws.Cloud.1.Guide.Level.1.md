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



## Challenge Prerequisites
1. AWS Un-Authenticated Enumeration
   1. AWS CLI installed
      1. [installation file script](./Flaws-Scripts/aws_cli_install.sh)
   2. AWS CLI Profile configured
      1. [configuration file script](./Flaws-Scripts/aws_cli_configure.sh)


## Challenge Tools
1. AWS Enumeration Un-Authenticated 
   1. [`nslookup`](https://www.nslookup.io/ "DNS Lookup Tool")
   2. [`aws s3 ls`](https://docs.aws.amazon.com/cli/latest/reference/s3/ls.html "AWS S3 List Command")
   3. [`curl`](https://curl.haxx.se/ "Curl Command Line Tool")
   4. ['grep'](https://www.gnu.org/software/grep/ "Grep Command Line Tool")



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




