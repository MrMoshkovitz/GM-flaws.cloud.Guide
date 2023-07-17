#*      Source Environment Variables
#? ----------------------------------------
. ./Flaws.Cloud.Vars.env

#*             Configure AWS CLI awsS3Admin Profile
#? ----------------------------------------
aws configure set default.region $AWS_REGION --profile $AWS_USER
aws configure set aws_access_key_id $AWS_ACCESS_KEY --profile $AWS_USER
aws configure set aws_secret_access_key $AWS_SECRET_KEY --profile $AWS_USER
aws configure set default.output json --profile $AWS_USER
