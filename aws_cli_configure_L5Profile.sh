#*      Source Environment Variables
#? ----------------------------------------
. ./Flaws.Cloud.Vars.env

#*             Configure AWS CLI awsS3Admin Profile
#? ----------------------------------------
aws configure set default.region $AWS_REGION --profile $L5_USER
aws configure set aws_access_key_id $L5_ACCESS_KEY --profile $L5_USER
aws configure set aws_secret_access_key $L5_SECRET_KEY --profile $L5_USER
aws configure set aws_session_token $L5_TOKEN --profile $L5_USER
aws configure set default.output json --profile $L5_USER















