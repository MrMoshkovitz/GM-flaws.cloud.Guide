#*      Source Environment Variables
#? ----------------------------------------
. ./Flaws.Cloud.Vars.env

#*             Configure AWS CLI
#? ----------------------------------------
aws configure set default.region $AWS_REGION
aws configure set aws_access_key_id $AWS_ACCESS_KEY
aws configure set aws_secret_access_key $AWS_SECRET_KEY
aws configure set default.output json