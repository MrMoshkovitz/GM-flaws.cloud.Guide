#*      Source Environment Variables
#? ----------------------------------------
. ./Flaws.Cloud.Vars.env

#*             Configure AWS CLI awsS3Admin Profile
#? ----------------------------------------
aws configure set default.region $AWS_REGION --profile $L4_USER
aws configure set aws_access_key_id $L4_ACCESS_KEY --profile $L4_USER
aws configure set aws_secret_access_key $L4_SECRET_KEY --profile $L4_USER
aws configure set default.output json --profile $L4_USER
