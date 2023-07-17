#*      Source Environment Variables
#? ----------------------------------------
. ./Flaws.Cloud.Vars.env

#*             Configure AWS CLI awsS3Admin Profile
#? ----------------------------------------
aws configure set default.region $AWS_REGION --profile $L6_USER
aws configure set aws_access_key_id $L6_ACCESS_KEY --profile $L6_USER
aws configure set aws_secret_access_key $L6_SECRET_KEY --profile $L6_USER
aws configure set default.output json --profile $L6_USER



aws 












