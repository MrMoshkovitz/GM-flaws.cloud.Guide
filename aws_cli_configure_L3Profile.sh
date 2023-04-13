#*      Source Environment Variables
#? ----------------------------------------
. ./Flaws.Cloud.Vars.env

#*             Configure AWS CLI awsS3Admin Profile
#? ----------------------------------------
aws configure set default.region $AWS_REGION --profile $L3_USER
aws configure set aws_access_key_id $L3_ACCESS_KEY --profile $L3_USER
aws configure set aws_secret_access_key $L3_SECRET_KEY --profile $L3_USER
aws configure set default.output json --profile $L3_USER
